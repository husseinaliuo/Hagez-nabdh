import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabth/core/constant/app_route.dart';
import 'package:nabth/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> _formloginKey = GlobalKey<FormState>();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _otpCode = TextEditingController();
  bool _isOtpSent = false;
  bool _isLoading = false;

  // Getters
  bool get isOtpSent => _isOtpSent;
  TextEditingController get phoneNumber => _phoneNumber;
  TextEditingController get otpCode => _otpCode;
  GlobalKey<FormState> get formloginKey => _formloginKey;
  bool get isLoading => _isLoading;

  String get _phoneWithCode {
    var digits = _phoneNumber.text.replaceAll(RegExp(r'\D'), '');
    if (digits.startsWith('964')) {
      digits = digits.substring(3);
    }
    if (digits.startsWith('0')) {
      digits = digits.substring(1);
    }
    return '+964$digits';
  }

  void onSubmit() {
    if (_formloginKey.currentState!.validate()) {
      if (_isOtpSent) {
        onVerifyOtp();
      } else {
        onSendOtp();
      }
    }
  }

  Future<void> onSendOtp() async {
    try {
      setLoading(true);
      await supabase!.auth.signInWithOtp(phone: _phoneWithCode);
      _isOtpSent = true;
      setLoading(false);
      Get.snackbar(
        "تم إرسال الرمز",
        "تم إرسال رمز التحقق إلى رقم هاتفك",
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      setLoading(false);
      _showError(e, isSend: true);
    }
  }

  Future<void> onVerifyOtp() async {
    try {
      setLoading(true);
      final response = await supabase!.auth.verifyOTP(
        phone: _phoneWithCode,
        token: _otpCode.text.trim(),
        type: OtpType.sms,
      );
      setLoading(false);
      if (response.session != null) {
        Get.offAllNamed(AppRoute.initial);
      } else {
        Get.snackbar(
          "خطأ",
          "تعذّر التحقق من الرمز. حاول مرة أخرى.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      setLoading(false);
      _showError(e);
    }
  }

  void _showError(dynamic e, {bool isSend = false}) {
    String title = isSend ? "فشل إرسال الرمز" : "رمز غير صحيح";
    String message = isSend
        ? "تعذّر إرسال رمز التحقق. تحقق من رقم الهاتف وحاول مرة أخرى."
        : "رمز التحقق غير صحيح أو انتهت صلاحيته.";

    if (e.toString().contains('SocketException') ||
        e.toString().contains('Failed host lookup') ||
        e.toString().contains('No address associated with hostname')) {
      title = "خطأ في الشبكة";
      message = "تعذّر الاتصال بالخادم. تحقق من اتصالك بالإنترنت.";
    } else if (e.toString().contains('TimeoutException')) {
      title = "انتهت مهلة الاتصال";
      message = "انتهت مهلة الاتصال. حاول مرة أخرى.";
    } else if (e.toString().contains('Invalid OTP') ||
        e.toString().contains('otp_expired') ||
        e.toString().contains('invalid token')) {
      title = "رمز غير صحيح";
      message = "رمز التحقق غير صحيح أو انتهت صلاحيته.";
    } else if (e.toString().contains('phone')) {
      title = "رقم غير صحيح";
      message = "يرجى التحقق من رقم الهاتف ثم إعادة المحاولة.";
    }

    Get.showSnackbar(
      GetSnackBar(
        title: title,
        message: message,
        duration: const Duration(seconds: 4),
        backgroundColor: Colors.red.shade600,
      ),
    );
  }

  void navigateToRegister() {
    Get.offAllNamed(AppRoute.register);
  }

  void setLoading(bool value) {
    _isLoading = value;
    update();
  }

  @override
  void onClose() {
    _phoneNumber.dispose();
    _otpCode.dispose();
    super.onClose();
  }
}

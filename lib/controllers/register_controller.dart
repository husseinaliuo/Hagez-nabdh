import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabth/core/constant/app_route.dart';
import 'package:nabth/main.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> _formRegisterKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController(
    text: "MahdiLaith@gmail.com",
  );
  final TextEditingController _password = TextEditingController(
    text: "123456789",
  );
  final TextEditingController _fullName = TextEditingController(
    text: "Mahdi Laith",
  );
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController(
    text: "123456789",
  );
  bool _isObscured = true;
  bool _isObscuredConfirm = true;
  bool _isLoading = false;
  bool _isRegiterByPhone = false;

  // Getters
  GlobalKey<FormState> get formRegisterKey => _formRegisterKey;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  TextEditingController get fullName => _fullName;
  TextEditingController get phoneNumber => _phoneNumber;
  TextEditingController get confirmPassword => _confirmPassword;
  bool get isObscured => _isObscured;
  bool get isObscuredConfirm => _isObscuredConfirm;
  bool get isLoading => _isLoading;
  bool get isRegisterByPhone => _isRegiterByPhone;

  void onSubmit() {
    if (_formRegisterKey.currentState!.validate()) {
      debugPrint("form is valid");
      onRegister();
    } else {
      debugPrint("form not valid");
    }
  }

  Future<void> onRegister() async {
    try {
      setLoading(true);
      final response = await supabase?.auth.signUp(
        email: _isRegiterByPhone ? null : _email.text,
        password: _password.text,
        phone: _isRegiterByPhone ? _phoneNumber.text : null,
        data: {'full_name': _fullName.text},
      );
      if (response != null) {
        debugPrint("Register successful: ${response.user}");
        Get.snackbar(
          "نجاح",
          "تم إنشاء الحساب بنجاح! يرجى تفعيل حسابك.",
        );
        Get.offAllNamed(AppRoute.login);
      }
      setLoading(false);
    } catch (e) {
      String errorMessage = "حدث خطأ أثناء التسجيل. يرجى المحاولة مرة أخرى.";
      String errorTitle = "خطأ في التسجيل";

      // Check for network-related errors
      if (e.toString().contains('SocketException') ||
          e.toString().contains('Failed host lookup') ||
          e.toString().contains('No address associated with hostname')) {
        errorTitle = "خطأ في الشبكة";
        errorMessage =
            "تعذّر الاتصال بالخادم. يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.";
      } else if (e.toString().contains('TimeoutException')) {
        errorTitle = "انتهت مهلة الاتصال";
        errorMessage =
            "انتهت مهلة الاتصال. يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.";
      } else if (e.toString().contains('already registered') ||
          e.toString().contains('already exists')) {
        errorTitle = "فشل التسجيل";
        errorMessage = "هذا البريد الإلكتروني أو رقم الهاتف مسجل بالفعل.";
      }

      Get.showSnackbar(
        GetSnackBar(
          title: errorTitle,
          message: errorMessage,
          duration: Duration(seconds: 4),
          backgroundColor: Colors.red.shade600,
        ),
      );
      debugPrint("Register failed: $e");
      setLoading(false);
    }
  }

  void togglePasswordVisibility() {
    _isObscured = !_isObscured;
    update();
  }

  void toggleConfirmPasswordVisibility() {
    _isObscuredConfirm = !_isObscuredConfirm;
    update();
  }

  void navigateToLogin() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onClose() {
    _email.dispose();
    _password.dispose();
    _fullName.dispose();
    _phoneNumber.dispose();
    _confirmPassword.dispose();
    super.onClose();
  }

  void setLoading(bool value) {
    _isLoading = value;
    update();
  }

  void onToggleRegisterMethod(bool value) {
    _isRegiterByPhone = value;
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabth/controllers/login_controller.dart';
import '../../widgets/auth_phone_otp_fields.dart';

class LoginViewBody extends GetView<LoginController> {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => AuthPhoneOtpFields(
        formKey: controller.formloginKey,
        phoneController: controller.phoneNumber,
        otpController: controller.otpCode,
        isOtpSent: controller.isOtpSent,
        isLoading: controller.isLoading,
        onSubmit: () => controller.onSubmit(),
        buttonLabel: controller.isOtpSent ? "تأكيد الرمز" : "إرسال الرمز",
      ),
    );
  }
}

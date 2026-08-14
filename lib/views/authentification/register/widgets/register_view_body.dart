import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/register_controller.dart';
import '../../widgets/auth_phone_otp_fields.dart';

class RegisterViewBody extends GetView<RegisterController> {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (controller) => AuthPhoneOtpFields(
        formKey: controller.formRegisterKey,
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

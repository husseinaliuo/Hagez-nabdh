import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabth/controllers/login_controller.dart';
import 'package:nabth/core/functions/valid_input.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../shared/spacer.dart';
import '../../widgets/auth_input.dart';
import '../../widgets/auth_label.dart';
import '../../widgets/auth_password_eye_button.dart';

class LoginViewBody extends GetView<LoginController> {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formloginKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthLabel(label: "البريد الإلكتروني"),
          VerticalSpacer(15),
          AuthInput(
            hintText: "user@mail.com",
            controller: controller.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) =>
                validateInput(value, min: 8, max: 200, type: InputType.email),
          ),
          VerticalSpacer(30),
          AuthLabel(label: "كلمة المرور"),
          VerticalSpacer(15),
          GetBuilder<LoginController>(
            builder: (controller) => AuthInput(
              hintText: "********",
              controller: controller.password,
              obscureText: controller.isObscured,
              suffixIcon: AuthPasswordEyeButton(
                isObscured: controller.isObscured,
                onPressed: () => controller.togglePasswordVisibility(),
              ),
              validator: (value) => validateInput(
                value,
                min: 8,
                max: 150,
                type: InputType.password,
              ),
            ),
          ),
          VerticalSpacer(30),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () => controller.forgotPassword(),
              child: Text(
                "هل نسيت كلمة المرور؟",
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          VerticalSpacer(30),
          GetBuilder<LoginController>(
            builder: (controller) => SizedBox(
              width: double.infinity,
              child: controller.isLoading
                  ? FittedBox(
                      fit: BoxFit.scaleDown,
                      child: CircularProgressIndicator(color: AppColor.primary),
                    )
                  : ElevatedButton(
                      onPressed: () => controller.onSubmit(),
                      child: Text("تسجيل الدخول"),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

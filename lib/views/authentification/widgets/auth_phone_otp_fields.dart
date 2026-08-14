import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/functions/valid_input.dart';
import '../../../shared/spacer.dart';
import 'auth_input.dart';
import 'auth_label.dart';

class AuthPhoneOtpFields extends StatelessWidget {
  const AuthPhoneOtpFields({
    super.key,
    required this.formKey,
    required this.phoneController,
    required this.otpController,
    required this.isOtpSent,
    required this.isLoading,
    required this.onSubmit,
    required this.buttonLabel,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController phoneController;
  final TextEditingController otpController;
  final bool isOtpSent;
  final bool isLoading;
  final VoidCallback onSubmit;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthLabel(label: "رقم الهاتف"),
          VerticalSpacer(15),
          AuthInput(
            hintText: "7XX XXX XXXX",
            controller: phoneController,
            keyboardType: TextInputType.phone,
            enabled: !isOtpSent,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Text(
                "+964",
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            validator: (value) =>
                validateInput(value, min: 9, max: 13, type: InputType.number),
          ),
          if (isOtpSent) ...[
            VerticalSpacer(30),
            AuthLabel(label: "رمز التحقق"),
            VerticalSpacer(15),
            AuthInput(
              hintText: "000000",
              controller: otpController,
              keyboardType: TextInputType.number,
              validator: (value) =>
                  validateInput(value, min: 4, max: 6, type: InputType.number),
            ),
            VerticalSpacer(15),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () => onSubmit(),
                child: Text(
                  "إعادة إرسال الرمز",
                  style: TextStyle(
                    color: AppColor.button,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
          VerticalSpacer(30),
          SizedBox(
            width: double.infinity,
            child: isLoading
                ? FittedBox(
                    fit: BoxFit.scaleDown,
                    child: CircularProgressIndicator(color: AppColor.primary),
                  )
                : ElevatedButton(
                    onPressed: onSubmit,
                    child: Text(buttonLabel),
                  ),
          ),
        ],
      ),
    );
  }
}

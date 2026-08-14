import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabth/core/config.dart';
import 'package:nabth/shared/spacer.dart';
import '../../../controllers/login_controller.dart';
import '../widgets/auth_bottom_text_button.dart';
import '../widgets/auth_description.dart';
import '../widgets/auth_title.dart';
import 'widgets/login_view_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: Config.defaultPadding,
              child: Column(
                children: [
                  VerticalSpacer(41),
                  AuthTitle(text: "تفضّل وسجّل دخولك"),
                  VerticalSpacer(15),
                  AuthDescription(
                    text: "مرحباً بعودتك! سجّل الدخول برقم هاتفك.",
                  ),
                  VerticalSpacer(48),
                  LoginViewBody(),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 35),
              child: AuthBottomTextButton(
                label: "ليس لديك حساب؟ ",
                subLabel: "سجّل الآن",
                onTap: () => controller.navigateToRegister(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

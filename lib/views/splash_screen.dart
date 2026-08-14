import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nabth/core/config.dart';
import 'package:nabth/core/constant/app_color.dart';
import 'package:nabth/core/constant/app_font_family.dart';
import 'package:nabth/core/constant/app_image.dart';
import '../controllers/splash_controller.dart';
import '../shared/spacer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.linear1, AppColor.linear2],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(
              AppImage.imagesLogoLogoImage,
              width: 83,
              height: 83,
            ),
            VerticalSpacer(14),
            Text(
              Config.appName,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontFamily: AppFontFamily.tajawal,
                color: AppColor.white,
              ),
            ),
            Spacer(),
            SpinKitCircle(color: Colors.white, size: 50.0),
            VerticalSpacer(40),
          ],
        ),
      ),
    );
  }
}

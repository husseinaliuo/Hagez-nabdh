import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nabth/core/config.dart';
import 'package:nabth/core/constant/app_route.dart';
import 'package:nabth/core/services/storage_service.dart';

class OnboardingMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (StorageService.to.getBool(Config.sharedPrefOnboardingKey) == true) {
      return const RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:nabth/core/config.dart';
import 'package:nabth/core/services/storage_service.dart';
import 'package:nabth/core/theme/app_theme.dart';
import 'package:nabth/router/index.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

SupabaseClient? supabase;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  await dotenv.load(fileName: ".env");
  await initializeDateFormatting('ar');
  Intl.defaultLocale = 'ar';
  await Supabase.initialize(
    url: Config.supabaseUrlKey,
    anonKey: Config.supabaseAnonKey,
  );
  supabase = Supabase.instance.client;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Config.appName,
      theme: AppTheme.lightTheme,
      getPages: getPages,
      locale: const Locale('ar'),
      fallbackLocale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}

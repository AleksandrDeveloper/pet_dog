import 'package:flutter/material.dart';
import 'package:testtest/app.dart';
import 'package:testtest/ui_kit/theme.dart';
import 'package:testtest/utils/di/getit_init.dart';
import 'package:testtest/utils/route/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  getIt.registerSingleton<AppRoute>(AppRoute());
  getIt.registerSingleton<AppTheme>(AppTheme());
  runApp(const App());
}



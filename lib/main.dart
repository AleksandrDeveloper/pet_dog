import 'package:flutter/material.dart';
import 'package:testtest/app.dart';
import 'package:testtest/utils/di/getit_init.dart';
import 'package:testtest/utils/route/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  getIt.registerSingleton<AppRoute>(AppRoute());
  runApp(const App());
}



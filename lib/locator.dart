import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:masmas_food/route/auto_route.gr.dart';
import 'package:masmas_food/theme/themes.dart';

Future initializeApp() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  _endSplash();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(XTheme.barOverLayStyle);
  _locator();
}

void _locator() {
  GetIt.I.registerLazySingleton(() => XRouter());
}

Future<void> _endSplash() async {
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
}

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:masmas_food/route/auto_route.gr.dart';
import 'package:masmas_food/theme/themes.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I<XRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => "Masmas",
      darkTheme: XTheme.dark(),
      themeMode: ThemeMode.system,
      routeInformationParser:
          appRouter.defaultRouteParser(includePrefixMatches: true),
      routerDelegate: AutoRouterDelegate(
        appRouter,
      ),
    );
  }
}

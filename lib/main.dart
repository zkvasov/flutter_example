import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_example/di/di.dart';

import 'presentation/core/router/app_auto_router.dart';

Future<void> main() async {
  await configDI();

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    final appRouter = sl<AppAutoRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}

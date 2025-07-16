import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/routes/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/injection/env.dart';
import 'core/theme/app_theme.dart';
import 'feature/splash/view/splash_page.dart';

// shortcut for app theme
TextTheme appTextTheme(BuildContext context) => Theme.of(context).textTheme;
ColorScheme appColorScheme(BuildContext context) =>
    Theme.of(context).colorScheme;

// Set your environment here
const Environment env = Environment.development;

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'CrediChain',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      home: SplashPage(),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/routes/navigation.dart';
import 'package:flutter_credit_management/core/utils/assets.gen.dart';
import 'package:flutter_credit_management/feature/main/view/main_view.dart';
import 'package:flutter_credit_management/main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigation.pushReplacement(MainView(), MainView.routeSettings);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Column(
                children: [
                  Image.asset(Assets.icons.logo.path, width: 200, height: 200),
                ],
              ),
              Column(
                children: [
                  Text('Powered by', style: appTextTheme(context).labelLarge),
                  Image.asset(Assets.icons.logoBca.path, width: 50, height: 50),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

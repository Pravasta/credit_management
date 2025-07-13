import 'package:flutter/material.dart';
import 'package:flutter_credit_management/main.dart';

class VerifyView extends StatefulWidget {
  const VerifyView({super.key});

  static const RouteSettings routeSettings = RouteSettings(name: '/main');

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Verify View', style: appTextTheme(context).headlineMedium),
      ),
    );
  }
}

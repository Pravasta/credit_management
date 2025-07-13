import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/extensions/build_context_ext.dart';
import 'package:flutter_credit_management/core/style/custom_shadow.dart';
import 'package:flutter_credit_management/feature/dashboard/view/widgets/animated_progress_bar.dart';
import 'package:flutter_credit_management/main.dart';

import '../../../core/utils/assets.gen.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Container(
        width: context.deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        decoration: BoxDecoration(
          boxShadow: getCustomBoxShadow(),
          color: appColorScheme(context).onPrimary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.icons.logo.path, width: 80, height: 80),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout_outlined,
                color: appColorScheme(context).primary,
              ),
            ),
          ],
        ),
      );
    }

    Widget contentSection() {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              AnimatedProgressBar(score: 770, maxScore: 1000),
              Text('Active Loan', style: appTextTheme(context).headlineSmall),
              const SizedBox(height: 8),
              Text(
                'IDR 78.000.000.000,00',
                style: appTextTheme(context).titleLarge,
              ),
              const SizedBox(height: 24),
              Text(
                'Collectibility',
                style: appTextTheme(context).headlineSmall,
              ),
              const SizedBox(height: 8),
              Text('Good', style: appTextTheme(context).titleLarge!.copyWith()),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(body: Column(children: [appBar(), contentSection()])),
    );
  }
}

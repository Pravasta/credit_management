import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/extensions/build_context_ext.dart';
import 'package:flutter_credit_management/core/style/custom_shadow.dart';
import 'package:flutter_credit_management/feature/dashboard/view/dashboard_view.dart';
import 'package:flutter_credit_management/feature/history/view/history_view.dart';
import 'package:flutter_credit_management/feature/verify/view/verify_view.dart';
import 'package:flutter_credit_management/main.dart';

import '../../../core/utils/assets.gen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const RouteSettings routeSettings = RouteSettings(name: '/main');

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget content(int index) {
      switch (index) {
        case 0:
          return DashboardView();
        case 1:
          return HistoryView();
        case 2:
          return VerifyView();
        default:
          return DashboardView();
      }
    }

    Widget titleBottomNav({
      required String imageAsset,
      required String title,
      required bool isActive,
    }) {
      return Column(
        children: [
          Image.asset(
            imageAsset,
            width: 24,
            height: 24,
            color:
                isActive
                    ? appColorScheme(context).onPrimary
                    : appColorScheme(context).onPrimary.withOpacity(0.5),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: appTextTheme(context).bodySmall!.copyWith(
              color:
                  isActive
                      ? appColorScheme(context).onPrimary
                      : appColorScheme(context).onPrimary.withOpacity(0.5),
            ),
          ),
        ],
      );
    }

    Widget bottomNav() {
      return Positioned(
        left: 24,
        right: 24,
        bottom: 24,
        child: Container(
          width: context.deviceWidth,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: getCustomBoxShadow(),
            color: appColorScheme(context).primaryContainer,
          ),
          child: Row(
            children:
                [
                  {'title': 'Dashboard', 'icon': Assets.icons.dashboard.path},
                  {'title': 'History', 'icon': Assets.icons.history.path},
                  {'title': 'Verify', 'icon': Assets.icons.verify.path},
                ].map((e) {
                  return Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = [
                            'Dashboard',
                            'History',
                            'Verify',
                          ].indexOf(e['title'] as String);
                        });
                      },
                      child: titleBottomNav(
                        imageAsset: e['icon'] as String,
                        title: e['title'] as String,
                        isActive:
                            _currentIndex ==
                            [
                              'Dashboard',
                              'History',
                              'Verify',
                            ].indexOf(e['title'] as String),
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(children: [content(_currentIndex), bottomNav()]),
    );
  }
}

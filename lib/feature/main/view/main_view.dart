import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/extensions/build_context_ext.dart';
import 'package:flutter_credit_management/core/style/custom_shadow.dart';
import 'package:flutter_credit_management/core/theme/app_color.dart';
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
            width: 26,
            height: 26,
            color: isActive ? AppColor.primary[500] : AppColor.secondary[500],
          ),
          SizedBox(height: 2),
          Text(
            title,
            style: appTextTheme(context).bodyMedium!.copyWith(
              color: isActive ? AppColor.primary[500] : AppColor.secondary[500],
              height: 20 / 14,
            ),
          ),
        ],
      );
    }

    Widget bottomNav() {
      return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          width: context.deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          decoration: BoxDecoration(
            boxShadow: getCustomBoxShadow(
              blurRadius: [19.3],
              offsets: [Offset(0, 4)],
              spreadRadius: [0.0],
              colors: [Color(0xff222C68).withOpacity(0.1)],
            ),
            color: appColorScheme(context).onPrimary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 78,
            children:
                [
                  {'title': 'Home', 'icon': Assets.icons.home.path, 'index': 0},
                  {
                    'title': 'History',
                    'icon': Assets.icons.history.path,
                    'index': 1,
                  },
                  {
                    'title': 'Verify',
                    'icon': Assets.icons.verify.path,
                    'index': 2,
                  },
                ].map((e) {
                  return Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = e['index'] as int;
                        });
                      },
                      child: titleBottomNav(
                        imageAsset: e['icon'] as String,
                        title: e['title'] as String,
                        isActive: _currentIndex == e['index'] as int,
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

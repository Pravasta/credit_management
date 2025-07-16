import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/components/app_button.dart';
import 'package:flutter_credit_management/core/style/custom_shadow.dart';
import 'package:flutter_credit_management/core/theme/app_color.dart';
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
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(24, 20, 24, 0),
        child: Row(
          children: [
            Image.asset(
              Assets.icons.logo.path,
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 13),
            Expanded(
              child: Text(
                'CrediChain',
                style: appTextTheme(context).bodyLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff02275A),
                ),
              ),
            ),
            Image.asset(
              Assets.icons.mail.path,
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ],
        ),
      );
    }

    Widget progressBarSection() {
      return AnimatedProgressBar(score: 700, maxScore: 1000);
    }

    Widget contentSection() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            DefaultButton(
              title: 'Update Score',
              onTap: () {},
              backgroundColor: Color(0xff005BA4),
              borderColor: Color(0xff005BA4),
              titleColor: AppColor.white,
            ),
            SizedBox(height: 20),
            Text(
              'You can update your score in 30 days',
              style: appTextTheme(
                context,
              ).bodySmall!.copyWith(color: Color(0xff9299B5)),
            ),
          ],
        ),
      );
    }

    Widget loanSection() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 21),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
          boxShadow: getCustomBoxShadow(),
          color: AppColor.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Text('Tempat Loan'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Loan History',
                        style: appTextTheme(
                          context,
                        ).bodySmall!.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'As of May 25, 2025',
                      style: appTextTheme(
                        context,
                      ).bodySmall!.copyWith(color: Color(0xff9299B5)),
                    ),
                  ],
                ),
                Text(
                  'Loan Total',
                  style: appTextTheme(
                    context,
                  ).labelLarge!.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  'Rp 14.000.000',
                  style: appTextTheme(context).titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3f455d),
                  ),
                ),
                Text(
                  'From 5 financials',
                  style: appTextTheme(
                    context,
                  ).bodySmall!.copyWith(color: Color(0xff9299B5)),
                ),
                DefaultButton(
                  title: 'See Details',
                  onTap: () {},
                  backgroundColor: AppColor.white,
                  borderColor: AppColor.primary[500]!,
                  titleColor: AppColor.primary[500]!,
                  elevation: 0,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bannerSection() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'More Loan Product',
              style: appTextTheme(context).bodyLarge!.copyWith(
                fontWeight: FontWeight.w600,
                color: Color(0xff3f455d),
              ),
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 20,
              children:
                  [
                        {'images': Assets.images.banner.path, 'index': 0},
                        {'images': Assets.images.banner.path, 'index': 1},
                        {'images': Assets.images.banner.path, 'index': 2},
                      ]
                      .map(
                        (e) => Container(
                          width: 300,
                          height: 200,
                          margin: EdgeInsets.only(
                            left: e['index'] == 0 ? 24 : 0,
                            right: e['index'] == 2 ? 24 : 0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(e['images'] as String),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: getCustomBoxShadow(),
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              appBar(),
              progressBarSection(),
              contentSection(),
              SizedBox(height: 22),
              loanSection(),
              SizedBox(height: 30),
              bannerSection(),
              SizedBox(height: 74),
            ],
          ),
        ),
      ),
    );
  }
}

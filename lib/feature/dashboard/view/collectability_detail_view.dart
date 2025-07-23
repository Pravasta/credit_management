import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/style/custom_shadow.dart';
import 'package:flutter_credit_management/main.dart';

import 'widgets/gradient_slider.dart';

class CollectabilityDetailView extends StatefulWidget {
  const CollectabilityDetailView({super.key});

  @override
  State<CollectabilityDetailView> createState() =>
      _CollectabilityDetailViewState();

  static const RouteSettings routeSettings = RouteSettings(
    name: '/collectabilityDetailView',
  );
}

class _CollectabilityDetailViewState extends State<CollectabilityDetailView> {
  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(24, 30, 24, 16),
        decoration: BoxDecoration(
          boxShadow: getCustomBoxShadow(
            offsets: [Offset(0, 2)],
            blurRadius: [8],
            spreadRadius: [-4],
            colors: [Colors.black.withOpacity(0.04)],
          ),
          color: Colors.white,
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
                size: 16,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(width: 16),
            Text(
              'Back',
              style: appTextTheme(context).bodyLarge!.copyWith(
                color: Color(0xff1b1b1b),
                fontWeight: FontWeight.w500,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
      );
    }

    Widget contentSection() {
      return Expanded(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 38),
                // Header
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xfffffcfc),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: getCustomBoxShadow(),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Collectability Status',
                              style: appTextTheme(context).bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            'As of May 25, 2025',
                            style: appTextTheme(
                              context,
                            ).labelLarge!.copyWith(color: Color(0xff9299B5)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'KOL 1',
                            style: appTextTheme(
                              context,
                            ).headlineSmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3f455d),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '(Performing Loan)',
                            style: appTextTheme(
                              context,
                            ).bodyMedium!.copyWith(color: Color(0xff3f455d)),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Collectability Score',
                              style: appTextTheme(context).bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            'As of May 25, 2025',
                            style: appTextTheme(
                              context,
                            ).labelLarge!.copyWith(color: Color(0xff9299B5)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            '630',
                            style: appTextTheme(
                              context,
                            ).headlineSmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3f455d),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '(Performing Loan)',
                            style: appTextTheme(
                              context,
                            ).bodyMedium!.copyWith(color: Color(0xff3f455d)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        spacing: 4,
                        children: [
                          GradientSlider(),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '800',
                                  style: appTextTheme(
                                    context,
                                  ).bodySmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff9299B5),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '200',
                                style: appTextTheme(
                                  context,
                                ).bodySmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff9299B5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // History Collectability
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xfffffcfc),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: getCustomBoxShadow(),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'History Collectability',
                              style: appTextTheme(context).bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        spacing: 10,
                        children:
                            [
                              {
                                'index': 0,
                                'title': 'PT Bank BCA Tbk',
                                'status': 'Lancar',
                                'date': '2025-05-25',
                              },
                              {
                                'index': 1,
                                'title': 'PT Bank ABC Tbk',
                                'status': 'Macet',
                                'date': '2025-05-20',
                              },
                              {
                                'index': 2,
                                'title': 'PT Bank XYZ Tbk',
                                'status': 'Macet',
                                'date': '2025-05-15',
                              },
                              {
                                'index': 3,
                                'title': 'PT Bank DEF Tbk',
                                'status': 'Lancar',
                                'date': '2025-05-10',
                              },
                              {
                                'index': 4,
                                'title': 'PT Bank GHI Tbk',
                                'status': 'Lancar',
                                'date': '2025-05-05',
                              },
                              {
                                'index': 5,
                                'title': 'PT Bank JKL Tbk',
                                'status': 'Macet',
                                'date': '2025-04-30',
                              },
                            ].map((e) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffeeeeee),
                                  ),
                                  color: Color(0xfffffcfc),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 6,
                                  horizontal: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 10,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            e['title'] as String,
                                            style: appTextTheme(
                                              context,
                                            ).bodySmall!.copyWith(
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff555555),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6,
                                            vertical: 6,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color:
                                                e['status'] == 'Lancar'
                                                    ? Color(0xff0b9105)
                                                    : Color(0xffd74740),
                                          ),
                                          child: Center(
                                            child: Text(
                                              e['status'] as String,
                                              style: appTextTheme(
                                                context,
                                              ).labelSmall!.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Date: ${e['date']}',
                                      style: appTextTheme(
                                        context,
                                      ).labelLarge!.copyWith(
                                        color: Color(0xff9299B5),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEFF1F5),
        body: Column(children: [appBar(), contentSection()]),
      ),
    );
  }
}

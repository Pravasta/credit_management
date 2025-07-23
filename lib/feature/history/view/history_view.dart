import 'package:flutter/material.dart';
import 'package:flutter_credit_management/main.dart';

import '../../../core/style/custom_shadow.dart';
import '../../../core/utils/assets.gen.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  int _selectedIndexLoanType = 0;

  @override
  Widget build(BuildContext context) {
    Widget creditCardLoanHistory() {
      return SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Loan Total',
                        style: appTextTheme(
                          context,
                        ).bodyLarge!.copyWith(fontWeight: FontWeight.w600),
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
                Text(
                  'Rp 10.500.000',
                  style: appTextTheme(context).headlineMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff02275A),
                  ),
                ),
              ],
            ),
            Column(
              spacing: 20,
              children:
                  [
                    {
                      'index': 0,
                      'title': 'PT Bank BCA Tbk',
                      'status': 'Lancar',
                      'date': '2025-05-25',
                      'total': 5000000,
                    },
                    {
                      'index': 1,
                      'title': 'PT Bank ABC Tbk',
                      'status': 'Macet',
                      'date': '2025-05-20',
                      'total': 3000000,
                    },
                    {
                      'index': 2,
                      'title': 'PT Bank XYZ Tbk',
                      'status': 'Macet',
                      'date': '2025-05-15',
                      'total': 2000000,
                    },
                    {
                      'index': 3,
                      'title': 'PT Bank DEF Tbk',
                      'status': 'Lancar',
                      'date': '2025-05-10',
                      'total': 1500000,
                    },
                    {
                      'index': 4,
                      'title': 'PT Bank GHI Tbk',
                      'status': 'Lancar',
                      'date': '2025-05-05',
                      'total': 2500000,
                    },
                    {
                      'index': 5,
                      'title': 'PT Bank JKL Tbk',
                      'status': 'Macet',
                      'date': '2025-04-30',
                      'total': 1000000,
                    },
                  ].map((e) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffeeeeee)),
                        color: Color(0xfffffcfc),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 24,
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
                                  borderRadius: BorderRadius.circular(10),
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
                            'Rp ${e['total']}',
                            style: appTextTheme(context).titleMedium!.copyWith(
                              color: Color(0xff3f455d),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Date: ${e['date']}',
                            style: appTextTheme(context).labelLarge!.copyWith(
                              color: Color(0xff9299B5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
            SizedBox(height: 20),
          ],
        ),
      );
    }

    Widget payLaterLoanHistory() {
      return SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Loan Total',
                        style: appTextTheme(
                          context,
                        ).bodyLarge!.copyWith(fontWeight: FontWeight.w600),
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
                Text(
                  'Rp 8.500.000',
                  style: appTextTheme(context).headlineMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff02275A),
                  ),
                ),
              ],
            ),
            Column(
              spacing: 20,
              children:
                  [
                    {
                      'index': 0,
                      'title': 'PT Bank BCA Tbk',
                      'status': 'Lancar',
                      'date': '2025-05-25',
                      'total': 5000000,
                    },
                    {
                      'index': 1,
                      'title': 'PT Bank ABC Tbk',
                      'status': 'Macet',
                      'date': '2025-05-20',
                      'total': 3000000,
                    },
                    {
                      'index': 2,
                      'title': 'PT Bank XYZ Tbk',
                      'status': 'Macet',
                      'date': '2025-05-15',
                      'total': 2000000,
                    },
                  ].map((e) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffeeeeee)),
                        color: Color(0xfffffcfc),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 24,
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
                                  borderRadius: BorderRadius.circular(10),
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
                            'Rp ${e['total']}',
                            style: appTextTheme(context).titleMedium!.copyWith(
                              color: Color(0xff3f455d),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Date: ${e['date']}',
                            style: appTextTheme(context).labelLarge!.copyWith(
                              color: Color(0xff9299B5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
            SizedBox(height: 20),
          ],
        ),
      );
    }

    Widget housingLoanHistory() {
      return SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Loan Total',
                        style: appTextTheme(
                          context,
                        ).bodyLarge!.copyWith(fontWeight: FontWeight.w600),
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
                Text(
                  'Rp 15.500.000',
                  style: appTextTheme(context).headlineMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff02275A),
                  ),
                ),
              ],
            ),
            Column(
              spacing: 20,
              children:
                  [
                    {
                      'index': 0,
                      'title': 'PT Bank XYZ Tbk',
                      'status': 'Macet',
                      'date': '2025-05-15',
                      'total': 2000000,
                    },
                    {
                      'index': 1,
                      'title': 'PT Bank DEF Tbk',
                      'status': 'Lancar',
                      'date': '2025-05-10',
                      'total': 1500000,
                    },
                    {
                      'index': 2,
                      'title': 'PT Bank GHI Tbk',
                      'status': 'Lancar',
                      'date': '2025-05-05',
                      'total': 2500000,
                    },
                    {
                      'index': 3,
                      'title': 'PT Bank JKL Tbk',
                      'status': 'Macet',
                      'date': '2025-04-30',
                      'total': 1000000,
                    },
                  ].map((e) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffeeeeee)),
                        color: Color(0xfffffcfc),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 24,
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
                                  borderRadius: BorderRadius.circular(10),
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
                            'Rp ${e['total']}',
                            style: appTextTheme(context).titleMedium!.copyWith(
                              color: Color(0xff3f455d),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Date: ${e['date']}',
                            style: appTextTheme(context).labelLarge!.copyWith(
                              color: Color(0xff9299B5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
            SizedBox(height: 20),
          ],
        ),
      );
    }

    Widget personalLoanHistory() {
      return SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Loan Total',
                        style: appTextTheme(
                          context,
                        ).bodyLarge!.copyWith(fontWeight: FontWeight.w600),
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
                Text(
                  'Rp 0',
                  style: appTextTheme(context).headlineMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff02275A),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
          ],
        ),
      );
    }

    Widget contentLoan(int selectedIndex) {
      switch (selectedIndex) {
        case 0:
          return creditCardLoanHistory();
        case 1:
          return payLaterLoanHistory();
        case 2:
          return housingLoanHistory();
        case 3:
          return personalLoanHistory();
        default:
          return creditCardLoanHistory();
      }
    }

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

    Widget contentSection() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Loan History',
                style: appTextTheme(context).titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Color(0xff02275A),
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xfffffcfc),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: getCustomBoxShadow(),
                  ),
                  child: Column(
                    children: [
                      // Tabbar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            [
                              {
                                'index': 0,
                                'label': 'Credit Card',
                                'icon': Assets.icons.creditCard.path,
                              },
                              {
                                'index': 1,
                                'label': 'PayLater',
                                'icon': Assets.icons.paylater.path,
                              },
                              {
                                'index': 2,
                                'label': 'Housing',
                                'icon': Assets.icons.housing.path,
                              },
                              {
                                'index': 3,
                                'label': 'Personal Loan',
                                'icon': Assets.icons.personal.path,
                              },
                            ].map((e) {
                              final idx = e['index'] as int;
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedIndexLoanType = idx;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        _selectedIndexLoanType == idx
                                            ? Color(0xff005BA4)
                                            : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: getCustomBoxShadow(),
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        e['icon'] as String,
                                        width: 16,
                                        height: 16,
                                        color:
                                            _selectedIndexLoanType == idx
                                                ? Colors.white
                                                : Color(0xffB1B5C4),
                                      ),
                                      Text(
                                        e['label'] as String,
                                        style: appTextTheme(
                                          context,
                                        ).bodySmall!.copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              _selectedIndexLoanType == idx
                                                  ? Colors.white
                                                  : Color(0xffB1B5C4),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                      ),
                      SizedBox(height: 20),
                      // content based on selected tab
                      Expanded(child: contentLoan(_selectedIndexLoanType)),
                    ],
                  ),
                ),
              ),
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

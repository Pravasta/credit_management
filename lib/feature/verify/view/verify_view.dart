import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/components/app_button.dart';
import 'package:flutter_credit_management/core/style/custom_shadow.dart';
import 'package:flutter_credit_management/feature/verify/view/widgets/custom_progress_bar.dart';
import 'package:flutter_credit_management/main.dart';

import '../../../core/utils/assets.gen.dart';

class VerifyView extends StatefulWidget {
  const VerifyView({super.key});

  static const RouteSettings routeSettings = RouteSettings(name: '/main');

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  List<String> verification = [];

  @override
  void initState() {
    super.initState();
    verification = ['Income Verification', 'National ID Verification'];
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Identify Verification',
                style: appTextTheme(context).titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Color(0xff02275A),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xfffffcfc),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: getCustomBoxShadow(),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xfff6f6f6),
                        border: Border.all(width: 1, color: Color(0xffeaeaea)),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          'MM',
                          style: appTextTheme(context).titleLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff02275A),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomProgressBar(progress: 0.75),
                    SizedBox(height: 20),
                    Column(
                      children:
                          [
                            'Income Verification',
                            'National ID Verification',
                            'Face Verification',
                            'SSI Verification',
                          ].map((e) {
                            return Row(
                              children: [
                                Checkbox(
                                  value: verification.contains(e),
                                  onChanged: (value) {
                                    setState(() {
                                      if (value == true) {
                                        verification.add(e);
                                      } else {
                                        verification.remove(e);
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  e,
                                  style: appTextTheme(
                                    context,
                                  ).bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff02275A),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                    ),
                    SizedBox(height: 20),
                    DefaultButton(
                      title: 'Continue Verification',
                      onTap: () {},
                      backgroundColor: Color(0xff005BA4),
                      borderColor: Color(0xff005BA4),
                      titleColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Column(children: [appBar(), contentSection()])),
    );
  }
}

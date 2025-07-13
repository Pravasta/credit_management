import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/extensions/build_context_ext.dart';
import 'package:flutter_credit_management/main.dart';

import '../../../core/style/custom_shadow.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Container(
        width: context.deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          boxShadow: getCustomBoxShadow(),
          color: appColorScheme(context).onPrimary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('History', style: appTextTheme(context).titleLarge)],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(children: [appBar(), Expanded(child: Container())]),
      ),
    );
  }
}

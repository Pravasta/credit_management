import 'package:another_flushbar/flushbar.dart';
import 'package:architecture_project/core/theme/app_color.dart';
import 'package:architecture_project/core/utils/assets.gen.dart';
import 'package:architecture_project/main.dart';
import 'package:flutter/material.dart';

import '../style/custom_shadow.dart';

class AppBottomSnackbar {
  final BuildContext context;

  AppBottomSnackbar(this.context);

  void showCustomSnackbar(
    String title,
    String message1,
    String? imageAsset, {
    Color? iconBackgroundColor = Colors.red,
    bool? isBluetooth = false,
    String? message2,
    String? message3,
  }) {
    Flushbar(
      boxShadows: getCustomBoxShadow(
        offsets: [Offset(0, 6)],
        blurRadius: [12],
        spreadRadius: [-4],
      ),
      isDismissible: false,
      duration: Duration(milliseconds: 1800),
      animationDuration: Duration(milliseconds: 500),
      flushbarPosition: FlushbarPosition.BOTTOM,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      borderWidth: 1,
      borderRadius: BorderRadius.circular(12),
      borderColor: AppColor.white,
      backgroundColor: AppColor.white,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.55,
        bottom: 16,
        right: 16,
      ),
      title: title,
      titleText: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  right: isBluetooth == false ? 0 : 8,
                  bottom: isBluetooth == false ? 0 : 8,
                ),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: iconBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    imageAsset ?? Assets.images.aGit,
                    width: 28,
                    height: 28,
                    // colorFilter: ColorFilter.mode(
                    //   AppColor.background,
                    //   BlendMode.srcIn,
                    // ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: isBluetooth == true ? 8 : 16),
          // Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: appTextTheme(context).titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColor.black,
                    letterSpacing: 0.4,
                  ),
                ),
                SizedBox(height: 4),
                Text.rich(
                  TextSpan(
                    text: message1,
                    style: appTextTheme(context).bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColor.black,
                      letterSpacing: 0.4,
                    ),
                    children: [
                      TextSpan(
                        text: message2 ?? '',
                        style: appTextTheme(context).bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                          letterSpacing: 0.4,
                        ),
                      ),
                      TextSpan(
                        text: message3 ?? '',
                        style: appTextTheme(context).bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Tutup',
                    style: appTextTheme(context).bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColor.primary,
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close, color: AppColor.black),
          ),
        ],
      ),
      messageText: SizedBox(),
    ).show(context);
  }
}

import 'package:flutter/material.dart';

import 'Color.dart';
import 'Size.dart';

class MyFont {
  static const BoxShadow boxShadowAvatar =
  BoxShadow(
    color: MyColor.colorShadowAvatar,
    blurRadius: MySize.blurRadiusAvatar,
    offset: Offset(0, MySize.offsetAvatar),
    spreadRadius: MySize.spreadRadiusAvatar,
  );

  static const TextStyle textStyleNameTop =
  TextStyle(
    color: MyColor.colorTextTop,
    fontSize: 24,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
  );

  static const TextStyle textStylePaymentCard =
  TextStyle(
    color: MyColor.colorTitleMain,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static const TextStyle textStylePriceCard =
  TextStyle(
    color: MyColor.colorTextMain,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static const TextStyle textStyleSubscriptionName =
  TextStyle(
    color: MyColor.colorTitleMain,
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.40,
  );

  static const BoxShadow boxShadowCard1 =
  BoxShadow(
    color: MyColor.colorShadowCard1,
    blurRadius: MySize.blurRadiusCard1,
    offset: Offset(0, MySize.offsetCard1),
    spreadRadius: MySize.spreadRadiusCard1,
  );

  static const BoxShadow boxShadowCard2 =
  BoxShadow(
    color: MyColor.colorShadowCard2,
    blurRadius: MySize.blurRadiusCard2,
    offset: Offset(0, MySize.offsetCard2),
    spreadRadius: MySize.spreadRadiusCard2,
  );

  static const TextStyle textStyleChips =
  TextStyle(
    color: MyColor.colorTitleMain,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static const TextStyle textStyleTitle =
  TextStyle(
    color: MyColor.colorTitleMain,
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.40,
  );

  static const TextStyle textStyleText =
  TextStyle(
    color: MyColor.colorTextMain,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static const TextStyle textStyleTitleConnection =
  TextStyle(
    color: MyColor.colorTitleMain,
    fontSize: 20,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
    letterSpacing: -0.70,
  );

  static const TextStyle textStyleTextConnection =
  TextStyle(
    color: MyColor.colorTextMain,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.42,
  );
}
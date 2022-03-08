import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StyledText {
  static TextStyle get menuTextStyle => Theme.of(Get.context!)
      .textTheme
      .bodyLarge!
      .copyWith(fontFamily: 'Verdana', color: Colors.grey.withOpacity(0.9));
  static TextStyle get homeUnderline =>
      Theme.of(Get.context!).textTheme.subtitle2!.copyWith(
        height: 1.3,
        fontWeight: FontWeight.w400,
          letterSpacing: 1,
          fontFamily: 'RobotoMono',

          decoration: TextDecoration.underline);
  static TextStyle get tabLabelTextStyle =>
      Theme.of(Get.context!).textTheme.subtitle2!.copyWith(
          letterSpacing: 1,
          fontFamily: 'RobotoMono',

         );


  static TextStyle get oggRoman =>
      Theme.of(Get.context!).textTheme.subtitle2!.copyWith(
          fontSize: 48,
          fontFamily: 'Ogg-Roman',
          fontWeight: FontWeight.bold,
          height: 1);

            static TextStyle get imageEffectsTitleStyle  =>
      Theme.of(Get.context!)
      .textTheme
      .bodySmall!
      .copyWith(fontFamily: 'Verdana', color: Colors.grey.withOpacity(0.9));
}

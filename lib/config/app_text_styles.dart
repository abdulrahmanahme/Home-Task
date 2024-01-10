import 'package:flutter/material.dart';
import 'package:home/config/app_colors.dart';

class AppTextStyle {
  ///FontSize
  static const TextStyle fontSize9 = TextStyle(fontSize: 9);

  static const TextStyle fontSize14 = TextStyle(fontSize: 14);
  static const TextStyle fontSize16 = TextStyle(fontSize: 16);
  static const TextStyle fontSize12= TextStyle(fontSize: 12);
  static const TextStyle fontSize15= TextStyle(fontSize: 15);
  static const TextStyle fontSize10= TextStyle(fontSize: 10);
  static const TextStyle fontSize20= TextStyle(fontSize: 20);





  ///FontWeight

  static const TextStyle fontWeight400 = TextStyle(fontWeight: FontWeight.w400);
  static const TextStyle fontWeight500 = TextStyle(fontWeight: FontWeight.w500);
  static const TextStyle fontWeight700 = TextStyle(fontWeight: FontWeight.w700);
  static const TextStyle fontWeight600 = TextStyle(fontWeight: FontWeight.w600);


  static const TextStyle fontWeightNormal =
      TextStyle(fontWeight: FontWeight.normal);

  ///Font Family
  static const TextStyle fontFamily = TextStyle(fontFamily: "Cairo");

  ///FontStyle
  static TextStyle get font14black700 => fontFamily
      .merge(fontWeight700)
      .merge(fontSize14)
      .copyWith(color: AppColors.black);
      static TextStyle get font14White700 => fontFamily
      .merge(fontWeight700)
      .merge(fontSize14)
      .copyWith(color: AppColors.white);
      static TextStyle get font20White700 => fontFamily
      .merge(fontWeight700)
      .merge(fontSize20)
      .copyWith(color: AppColors.white);
      static TextStyle get font14White400 => fontFamily
      .merge(fontWeight400)
      .merge(fontSize14)
      .copyWith(color: AppColors.white);

      static TextStyle get font16PrimaryTextColor500 => fontFamily
      .merge(fontWeight500)
      .merge(fontSize16)
      .copyWith(color: AppColors.primaryTextColor);
      static TextStyle get font16PrimaryTextColor700 => fontFamily
      .merge(fontWeight700)
      .merge(fontSize16)
      .copyWith(color: AppColors.primaryTextColor);
     
        static TextStyle get font12White500 => fontFamily
      .merge(fontWeight500)
      .merge(fontSize12)
      .copyWith(color: AppColors.white);

      static TextStyle get font16primaryColor600 => fontFamily
      .merge(fontWeight600)
      .merge(fontSize16)
      .copyWith(color: AppColors.primaryColor);
      static TextStyle get font16primaryColor400 => fontFamily
      .merge(fontWeight400)
      .merge(fontSize16)
      .copyWith(color: AppColors.primaryColor);
      
      static TextStyle get font15GreyColor400 => fontFamily
      .merge(fontWeight400)
      .merge(fontSize15)
      .copyWith(color: AppColors.greyColor);
      
      static TextStyle get font12GreyColor400 => fontFamily
      .merge(fontWeight400)
      .merge(fontSize12)
      .copyWith(color: AppColors.white);
     
     static TextStyle get font10GreyColor400 => fontFamily
      .merge(fontWeight400)
      .merge(fontSize10)
      .copyWith(color: AppColors.offWithe);
     
     

  
}

import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/font_weight_helper.dart';

class TextStyles {
  static const font30whiteColorSemiBold = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 30,
    color: AppColors.lightGrayColor,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const font20WhiteColorThin = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    color: AppColors.lightGrayColor,
    fontWeight: FontWeightHelper.thin,
  );
  static const font20WhiteColorMedium = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeightHelper.medium,
  );
  static const font14WhiteColorMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeightHelper.medium,
  );
  static const font12WhiteColorMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12,
    color: AppColors.white,
    fontWeight: FontWeightHelper.medium,
  );
  static const font22WhiteColorRegular = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 22,
    color: AppColors.lightGrayColor,
    fontWeight: FontWeightHelper.regular,
  );
  static const font16WhiteColorRegular = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: AppColors.lightGrayColor,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16WhiteColorRegularWithOpactiy = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: AppColors.lightGrayColor.withOpacity(0.8),
    fontWeight: FontWeightHelper.regular,
  );
  static const font16WhiteColorMedium = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeightHelper.medium,
  );
  static const font16LightGreyColorSemiMedium = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    color: AppColors.lightGrey,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const font20SecondColorThin = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    color: AppColors.secondColor,
    fontWeight: FontWeightHelper.thin,
  );
  static const font30SecondColorSemiBold = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 30,
    color: AppColors.secondColor,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const font30SecondColorBold = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 30,
    color: AppColors.secondColor,
    fontWeight: FontWeightHelper.bold,
  );
}

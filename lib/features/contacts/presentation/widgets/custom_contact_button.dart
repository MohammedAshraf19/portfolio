import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/styles.dart';

class CustomContactButton extends StatelessWidget {
  const CustomContactButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});
  final String icon;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          side: const BorderSide(
            color: AppColors.accentColor,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: AppColors.transportColor),
      onPressed: onTap,
      child: SizedBox(
        width: 110,
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          minVerticalPadding: 0,
          leading: SvgPicture.asset(icon),
          title: Text(
            title,
            style: TextStyles.font16WhiteColorRegular,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/styles.dart';

class CustomHomeButton extends StatelessWidget {
  const CustomHomeButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 224,
            height: 57,
            decoration:
                BoxDecoration(border: Border.all(color: AppColors.accentColor)),
            child: const Center(
              child: Text(
                'Projects',
                style: TextStyles.font30whiteColorSemiBold,
              ),
            ),
          ),
          Container(
            width: 68,
            height: 57,
            color: AppColors.accentColor,
            child: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

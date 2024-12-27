import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';

class CustomUserData extends StatelessWidget {
  const CustomUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(PortifolioData.name,
            style: TextStyles.font20SecondColorThin),
        const Text(PortifolioData.jobTitle,
            style: TextStyles.font16WhiteColorMedium),
        const SizedBox(
          height: 5,
        ),
        Text(
          PortifolioData.contactDescription,
          style: TextStyles.font16WhiteColorRegularWithOpactiy,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

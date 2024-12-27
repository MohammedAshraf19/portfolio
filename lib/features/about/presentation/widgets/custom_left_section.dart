import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';

class CustomLeftSection extends StatelessWidget {
  const CustomLeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'About Me',
          style: TextStyles.font30SecondColorBold,
        ),
        Container(
          color: AppColors.primayColor,
          height: 1,
          width: 150,
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          PortifolioData.about,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.font22WhiteColorRegular,
        ),
      ],
    );
  }
}

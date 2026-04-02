import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CustomLeftSection extends StatefulWidget {
  const CustomLeftSection({super.key});

  @override
  State<CustomLeftSection> createState() => _CustomLeftSectionState();
}

class _CustomLeftSectionState extends State<CustomLeftSection> {
  bool _aboutVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      onVisibilityChanged: (info) {
        setState(() => _aboutVisible = true);
      },
      key: const ValueKey('about-section'),
      child: FadeInLeft(
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOut,
        animate: _aboutVisible,
        child: Column(
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
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.font22WhiteColorRegular,
            ),
          ],
        ),
      ),
    );
  }
}

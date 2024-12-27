import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/utils/image.dart';
import 'package:portfolio/features/about/presentation/widgets/cusom_skill.dart';
import 'package:portfolio/features/about/presentation/widgets/custom_left_section.dart';

class AboutMobileScreen extends StatelessWidget {
  const AboutMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 50,
          ),
          child: CustomLeftSection(),
        ),
        Lottie.asset(ImageLinks.app),
        const SizedBox(height: 50, child: AutoScrollListView()),
      ],
    );
  }
}

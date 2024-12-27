import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/utils/image.dart';

import 'package:portfolio/features/about/presentation/widgets/cusom_skill.dart';
import 'package:portfolio/features/about/presentation/widgets/custom_left_section.dart';

class AboutWebScreen extends StatelessWidget {
  const AboutWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width / 12,
          ),
          child: Row(
            children: [
              const Expanded(child: CustomLeftSection()),
              Expanded(
                child: Lottie.asset(ImageLinks.app),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50, child: AutoScrollListView()),
      ],
    );
  }
}

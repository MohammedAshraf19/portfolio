import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/image.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WebExperienceScreen extends StatelessWidget {
  const WebExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: TimelineTile(
            alignment: TimelineAlign.center,
            isFirst: true,
            // Description Setting
            endChild: const Text(
              '- Mentored a software team in the Afro-Asian Software Competition, where the focus was on building a complete mobile application using Flutter. I led the technical direction, helped shape the app requirements and architecture, and worked closely with the team during implementation to ensure the product was practical, performant, and ready for real use. Through continuous review and iteration, the team delivered a strong solution and achieved 1st place out of 20+ competing teams.\n\n- Mentored a 3-member team in the Technoxian Problem Solving Competition, focusing on Python, algorithmic thinking, and competitive programming strategies. Preparation included solving 50+ practice problems, analyzing time and running mock contests to improve speed and accuracy. By encouraging collaboration and peer review, the team improved consistency and execution, ultimately securing 1st place out of 30+ competing teams.',
              style: TextStyles.font12WhiteColorSemiBold,
            ),
            // Title Setting
            startChild: Padding(
              padding: const EdgeInsets.only(left: 15, top: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Flutter Developer Intern - KAMN',
                    style: TextStyles.font16WhiteColorMedium,
                  ),
                  Text(
                    'Nov 2024 - Feb 2025',
                    style: TextStyles.font15WhiteColorSemiBold.copyWith(
                        color: Colors.white.withValues(alpha: 0.5),
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "${ImageLinks.bookApp}",
                    height: 100,
                    width: 100,
                  )
                ],
              ),
            ),

            // Indicator Setting
            indicatorStyle: IndicatorStyle(
              indicator: ClipOval(
                child: Image.asset(
                  ImageLinks.nasa,
                  fit: BoxFit.cover,
                ),
              ),
              height: 100,
              width: 100,
              padding: const EdgeInsets.symmetric(horizontal: 10),
            )),
      ),
    );
  }
}

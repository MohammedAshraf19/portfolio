import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/image.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/experience/presentation/widgets/experience_item_left_section.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
        alignment: TimelineAlign.center,
        // Description Setting
        endChild: const Text(
          '- Mentored a software team in the Afro-Asian Software Competition, where the focus was on building a complete mobile application using Flutter. I led the technical direction, helped shape the app requirements and architecture, and worked closely with the team during implementation to ensure the product was practical, performant, and ready for real use. Through continuous review and iteration, the team delivered a strong solution and achieved 1st place out of 20+ competing teams.\n\n- Mentored a 3-member team in the Technoxian Problem Solving Competition, focusing on Python, algorithmic thinking, and competitive programming strategies. Preparation included solving 50+ practice problems, analyzing time and running mock contests to improve speed and accuracy. By encouraging collaboration and peer review, the team improved consistency and execution, ultimately securing 1st place out of 30+ competing teams.',
          style: TextStyles.font12WhiteColorSemiBold,
        ),
        // Title Setting
        startChild: const ExperienceItemLeftSection(),
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
        ));
  }
}

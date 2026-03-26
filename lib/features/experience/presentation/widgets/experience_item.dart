import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/image.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/experience/models/experience_item_model.dart';
import 'package:portfolio/features/experience/presentation/widgets/experience_item_left_section.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem(
      {super.key, required this.index, required this.myExperience});
  final int index;
  final ExperienceItemModel myExperience;
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
        alignment: TimelineAlign.center,
        isFirst: index == 0 ? true : false,
        isLast: index == 2 ? true : false,
        // Description Setting
        endChild: Text(
          myExperience.description!,
          style: TextStyles.font12WhiteColorSemiBold,
        ),
        // Title Setting
        startChild: ExperienceItemLeftSection(myExperience: myExperience),
        // Indicator Setting
        indicatorStyle: IndicatorStyle(
          indicator: ClipOval(
            child: Image.asset(
              myExperience.companyLogo!,
              fit: BoxFit.cover,
            ),
          ),
          height: 100,
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 10),
        ));
  }
}

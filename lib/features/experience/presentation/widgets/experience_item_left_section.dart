import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/experience/models/experience_item_model.dart';

class ExperienceItemLeftSection extends StatelessWidget {
  const ExperienceItemLeftSection({super.key, required this.myExperience});
  final ExperienceItemModel myExperience;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.sizeOf(context).width > 800 ? 150 : 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${myExperience.jobTitle} - ${myExperience.companyName}',
                style: TextStyles.font18WhiteColorSemiBold
                // style: TextStyles.font16WhiteColorMedium,
                ),
            Text(
              '${myExperience.duration}\n${myExperience.location}',
              style: TextStyles.font15WhiteColorSemiBold.copyWith(
                  color: Colors.white.withValues(alpha: 0.5), fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(myExperience.description!,
                style: TextStyles.font18WhiteColorRegular),
          ],
        ),
      ),
    );
  }
}

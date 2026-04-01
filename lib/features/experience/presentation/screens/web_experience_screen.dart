import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/experience/presentation/widgets/experience_item.dart';

class WebExperienceScreen extends StatelessWidget {
  const WebExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100, left: 50),
          child: Column(
            children: [
              const Text(
                'Experience',
                style: TextStyles.font30SecondColorBold,
              ),
              Container(
                color: AppColors.primayColor,
                height: 1,
                width: 150,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * 0.1,
              right: MediaQuery.sizeOf(context).width * 0.01),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ExperienceItem(
                    myExperience: PortifolioData.experienceItems[index],
                    index: index,
                  ),
              itemCount: PortifolioData.experienceItems.length),
        ),
      ],
    );
  }
}

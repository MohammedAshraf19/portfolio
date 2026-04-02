import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/experience/presentation/widgets/experience_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WebExperienceScreen extends StatefulWidget {
  const WebExperienceScreen({super.key});

  @override
  State<WebExperienceScreen> createState() => _WebExperienceScreenState();
}

class _WebExperienceScreenState extends State<WebExperienceScreen> {
  var _experienceIsVisible = false;

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
        VisibilityDetector(
          key: const Key('experience-section'),
          onVisibilityChanged: (info) {
            setState(() => _experienceIsVisible = true);
          },
          child: FadeInDown(
            animate: _experienceIsVisible,
            duration: const Duration(seconds: 2),
            curve: Curves.easeOut,
            child: Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.1,
                  right: MediaQuery.sizeOf(context).width * 0.01),
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ExperienceItem(
                        myExperience: PortfolioData.experienceItems[index],
                        index: index,
                      ),
                  itemCount: PortfolioData.experienceItems.length),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:portfolio/core/utils/image.dart';
import 'package:portfolio/core/utils/styles.dart';

class ExperienceItemLeftSection extends StatelessWidget {
  const ExperienceItemLeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Flutter Developer Intern - KAMN',
            style: TextStyles.font16WhiteColorMedium,
          ),
          Text(
            'Nov 2024 - Feb 2025\nRemotly',
            style: TextStyles.font15WhiteColorSemiBold.copyWith(
                color: Colors.white.withValues(alpha: 0.5), fontSize: 12),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return InstaImageViewer(
                    child: Image.asset(
                      ImageLinks.bookApp,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

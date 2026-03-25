import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';

import 'package:portfolio/features/experience/presentation/widgets/experience_item.dart';

class WebExperienceScreen extends StatelessWidget {
  const WebExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: ListView.builder(
            itemBuilder: (context, index) => const ExperienceItem(),
            itemCount: 3),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/features/experience/presentation/screens/web_experience_screen.dart';
import 'package:portfolio/features/layouts/mobile_layout.dart';
import 'package:portfolio/core/widgets/adaptive_platform.dart';

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        webLayout: (context) => const WebExperienceScreen()); //WebLayout());
  }
}

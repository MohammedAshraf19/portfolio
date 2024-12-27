import 'package:flutter/material.dart';
import 'package:portfolio/features/layouts/mobile_layout.dart';
import 'package:portfolio/features/layouts/web_layout.dart';
import 'package:portfolio/core/widgets/adaptive_platform.dart';

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        webLayout: (context) => WebLayout());
  }
}

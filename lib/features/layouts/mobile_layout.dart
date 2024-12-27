import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/image.dart';

import 'package:portfolio/features/about/presentation/screens/about_mobile_screen.dart';
import 'package:portfolio/features/contacts/presentation/screens/contact_web_sreeen.dart';
import 'package:portfolio/features/home/presentation/screens/home_mobile_screen.dart';
import 'package:portfolio/features/projects/presentation/screens/projects_mobile_screen.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeMobileScreen(),
            Center(child: Lottie.asset(ImageLinks.scroll, height: 100)),
            const SizedBox(
              height: 100,
            ),
            const AboutMobileScreen(),
            const SizedBox(
              height: 100,
            ),
            const ProjectsMobileScreen(),
            const SizedBox(
              height: 30,
            ),
            const ContactWebSreeen(),
          ],
        ),
      )),
    );
  }
}

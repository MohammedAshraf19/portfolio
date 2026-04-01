import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/sections_key.dart';
import 'package:portfolio/features/about/presentation/screens/about_web_screen.dart';
import 'package:portfolio/features/contacts/presentation/screens/contact_web_sreeen.dart';
import 'package:portfolio/core/widgets/custom_app_bar.dart';
import 'package:portfolio/features/experience/presentation/screens/web_experience_screen.dart';
import 'package:portfolio/features/home/presentation/screens/home_web_screen.dart';
import 'package:portfolio/features/projects/presentation/screens/projects_web_screen.dart';

class WebLayout extends StatelessWidget {
  WebLayout({super.key});
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomeWebScreen(
                  key: SectionsKey.homeKey,
                  scrollController: _scrollController,
                ),
                AboutWebScreen(key: SectionsKey.aboutKey),
                WebExperienceScreen(
                  key: SectionsKey.experienceKey,
                ),
                ProjectsWebScreen(
                  key: SectionsKey.projectsKey,
                ),
                ContactWebSreeen(
                  key: SectionsKey.contactKey,
                ),
              ],
            ),
          ),
          CustomAppBar()
        ],
      ),
    );
  }
}

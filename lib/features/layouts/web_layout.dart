import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/features/about/presentation/screens/about_web_screen.dart';
import 'package:portfolio/features/contacts/presentation/screens/contact_web_sreeen.dart';

import 'package:portfolio/core/widgets/custom_app_bar.dart';
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
            controller: _scrollController,
            child: Column(
              children: [
                HomeWebScreen(
                  scrollController: _scrollController,
                ),
                const AboutWebScreen(),
                const ProjectsWebScreen(),
                const ContactWebSreeen(),
              ],
            ),
          ),
          CustomAppBar(
            scrollController: _scrollController,
          )
        ],
      ),
    );
  }
}

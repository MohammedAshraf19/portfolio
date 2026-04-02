import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/projects/presentation/widgets/project_mobile_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ProjectsMobileScreen extends StatefulWidget {
  const ProjectsMobileScreen({super.key});

  @override
  State<ProjectsMobileScreen> createState() => _ProjectsMobileScreenState();
}

class _ProjectsMobileScreenState extends State<ProjectsMobileScreen> {
  bool _projectVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('projects-section'),
      onVisibilityChanged: (info) {
        setState(() {
          _projectVisible = true;
        });
      },
      child: FadeInRight(
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOut,
        animate: _projectVisible,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Projects',
                style: TextStyles.font30SecondColorBold,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 620,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ProjectMobileItem(
                    projectModel: PortifolioData.projects[index],
                  ),
                  itemCount: PortifolioData.projects.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

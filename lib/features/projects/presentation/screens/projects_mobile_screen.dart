import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/projects/presentation/widgets/project_mobile_item.dart';

class ProjectsMobileScreen extends StatelessWidget {
  const ProjectsMobileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

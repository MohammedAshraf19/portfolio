import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/projects/presentation/widgets/project_item.dart';

class ProjectsWebScreen extends StatelessWidget {
  const ProjectsWebScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100, left: 50),
          child: Column(
            children: [
              const Text(
                'Projects',
                style: TextStyles.font30SecondColorBold,
              ),
              Container(
                color: AppColors.primayColor,
                height: 1,
                width: 120,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: GridView.count(
            crossAxisCount: gridSize(context), // 3 items per row
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio:
                1 / 1.7, // Ensures square items (width:height ratio is 1:1)
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(PortifolioData.projects.length, (index) {
              return ProjectItem(
                projectModel: PortifolioData.projects[index],
              );
            }),
          ),
        ),
      ],
    );
  }

  int gridSize(context) {
    if (MediaQuery.sizeOf(context).width > 600 &&
        MediaQuery.sizeOf(context).width < 1024) {
      return 2;
    } else if (MediaQuery.sizeOf(context).width >= 1024 &&
        MediaQuery.sizeOf(context).width < 1422) {
      return 3;
    } else if (MediaQuery.sizeOf(context).width >= 1422 &&
        MediaQuery.sizeOf(context).width < 1700) {
      return 4;
    }
    return 5;
  }
}

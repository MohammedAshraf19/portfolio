import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_left_side_section.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_right_side_section.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomLeftSideSection(
          scrollController: scrollController,
        ),
        const Spacer(),
        const CustomRightSideSection()
      ],
    );
  }
}

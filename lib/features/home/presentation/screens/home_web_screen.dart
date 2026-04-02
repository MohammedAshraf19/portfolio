import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_left_side_section.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_right_side_section.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [CustomLeftSideSection(), Spacer(), CustomRightSideSection()],
    );
  }
}

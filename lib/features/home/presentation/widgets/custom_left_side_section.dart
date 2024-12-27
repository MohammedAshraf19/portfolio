import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_home_button.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_home_title.dart';

class CustomLeftSideSection extends StatelessWidget {
  const CustomLeftSideSection({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 2,
      child: Column(
        children: [
          const CustomHomeTitle(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 20,
          ),
          CustomHomeButton(
            onTap: () {
              scrollController.animateTo(
                2 * MediaQuery.sizeOf(context).height,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOutSine,
              );
            },
          )
        ],
      ),
    );
  }
}

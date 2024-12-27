import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/image.dart';

class CustomRightSideSection extends StatelessWidget {
  const CustomRightSideSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: MediaQuery.sizeOf(context).width / 2, end: 0),
      duration: const Duration(seconds: 1),
      builder: (context, value, child) => Transform.translate(
        offset: Offset(value.toDouble(), 0),
        child: Container(
          color: Colors.black,
          width: MediaQuery.sizeOf(context).width / 2,
          height: MediaQuery.sizeOf(context).height,
          child: Image.asset(
            ImageLinks.profile1,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}

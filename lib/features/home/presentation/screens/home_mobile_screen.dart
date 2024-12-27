import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/image.dart';
import 'package:portfolio/core/widgets/custom_resume_button.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_home_title.dart';

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 1.09,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: TweenAnimationBuilder(
              tween:
                  Tween(begin: MediaQuery.sizeOf(context).height / 2, end: 0),
              duration: const Duration(seconds: 1),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(0, -value.toDouble()),
                child: Container(
                  color: Colors.black,
                  width: MediaQuery.sizeOf(context).width,
                  child: Image.asset(
                    ImageLinks.profile1,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
              child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomHomeTitle(),
                SizedBox(
                  height: 30,
                ),
                CustomResumeButton(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

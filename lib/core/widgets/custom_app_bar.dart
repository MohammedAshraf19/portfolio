import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/core/widgets/custom_resume_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.scrollController});
  final ScrollController scrollController;
  static const sections = ['Home', 'About', 'Projects', 'Contacts'];
  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).height > 300
        ? Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '<MA.dev>',
                  style: TextStyles.font20SecondColorThin,
                ),
                const Spacer(),
                MediaQuery.sizeOf(context).width > 1200
                    ? SizedBox(
                        height: 50,
                        width: 390,
                        child: ListView.builder(
                          itemBuilder: (context, index) => TextButton(
                            onPressed: () => _scrollToSection(index, context),
                            child: Text(
                              sections[index],
                              style: TextStyles.font20WhiteColorThin,
                            ),
                          ),
                          itemCount: sections.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    : const SizedBox(
                        height: 50,
                      ),
                const Spacer(),
                const CustomResumeButton(),
              ],
            ),
          )
        : Container();
  }

  void _scrollToSection(int index, context) {
    scrollController.animateTo(
      index * MediaQuery.sizeOf(context).height,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOutSine,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'dart:async';

class AutoScrollListView extends StatefulWidget {
  const AutoScrollListView({super.key});

  @override
  _AutoScrollListViewState createState() => _AutoScrollListViewState();
}

class _AutoScrollListViewState extends State<AutoScrollListView> {
  final ScrollController _scrollController = ScrollController();

  double _scrollPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  // Method to start the automatic scrolling with looping behavior
  void _startAutoScroll() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_scrollController.hasClients) {
        // If the list is near the end, scroll back to the beginning
        if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
          _scrollPosition = 0.0;
          _scrollController.jumpTo(_scrollPosition);
        } else {
          _scrollPosition += 200; // Move 200 pixels every 2 seconds
        }

        // Animate scrolling to the new position
        _scrollController.animateTo(
          _scrollPosition,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var skills = PortifolioData.skills;
    return Container(
      color: AppColors.primayColor,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal, // Horizontal scroll
        itemCount: skills.length * 2, // Double the item count to loop
        itemBuilder: (context, index) {
          // Loop the items
          final itemIndex = index % skills.length;
          return SizedBox(
            width: 250,
            child: ListTile(
              leading: SvgPicture.asset(skills[itemIndex].skillImage),
              title: Text(
                skills[itemIndex].skillName,
                style: TextStyles.font20WhiteColorThin,
              ),
            ),
          );
        },
      ),
    );
  }
}

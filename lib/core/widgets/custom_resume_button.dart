import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomResumeButton extends StatelessWidget {
  const CustomResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: const BorderSide(
              color: AppColors.accentColor,
            ),
            elevation: 0,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            backgroundColor: AppColors.transportColor),
        onPressed: () async {
          final Uri url = Uri.parse(PortifolioData.resume);
          await launchUrl(url);
        },
        child: const Text(
          'Resume',
          style: TextStyles.font20SecondColorThin,
        ));
  }
}

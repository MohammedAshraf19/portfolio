import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/icons.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/features/contacts/presentation/widgets/custom_contact_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContactsWay extends StatelessWidget {
  const CustomContactsWay({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContactButton(
              title: 'Linkedin',
              icon: IconLinks.linkedIn,
              onTap: () async {
                final Uri url = Uri.parse(PortifolioData.linkedIn);
                await launchUrl(url);
              },
            ),
            const SizedBox(
              width: 20,
            ),
            CustomContactButton(
              title: 'GitHub',
              icon: IconLinks.gitHub,
              onTap: () async {
                final Uri url = Uri.parse(PortifolioData.gitHub);
                await launchUrl(url);
              },
            ),
            const SizedBox(
              width: 20,
            ),
            CustomContactButton(
              title: 'Gmail',
              icon: IconLinks.gmail,
              onTap: () async {
                final Uri emailUri = Uri(
                  scheme: 'mailto',
                  path: PortifolioData.gmail,
                );
                await launchUrl(emailUri);
              },
            ),
          ],
        ),
      ),
    );
  }
}

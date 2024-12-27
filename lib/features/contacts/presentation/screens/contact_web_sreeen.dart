import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/styles.dart';
import 'package:portfolio/features/contacts/presentation/widgets/custom_contacts_way.dart';
import 'package:portfolio/features/contacts/presentation/widgets/custom_user_data.dart';

class ContactWebSreeen extends StatelessWidget {
  const ContactWebSreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.backgroundColor2,
          border: Border.all(color: AppColors.primayColor.withOpacity(0.5))),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text('Contact Me!', style: TextStyles.font30SecondColorBold),
          Container(
            width: 180,
            height: 1,
            color: AppColors.secondColor,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomContactsWay(),
          const SizedBox(
            height: 40,
          ),
          const CustomUserData(),
          const SizedBox(
            height: 100,
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/portifolio_data.dart';
import 'package:portfolio/core/utils/styles.dart';

class CustomHomeTitle extends StatelessWidget {
  const CustomHomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width / 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hi, I\'m ${PortifolioData.name}',
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.font30whiteColorSemiBold,
          ),
          const Text(
            PortifolioData.jobTitle,
            style: TextStyles.font30SecondColorSemiBold,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 50,
          ),
          MediaQuery.sizeOf(context).width < 800
              ? SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.2,
                  child: const Text(
                    PortifolioData.description,
                    style: TextStyles.font16LightGreyColorSemiMedium,
                  ),
                )
              : const Text(
                  PortifolioData.description,
                  style: TextStyles.font16LightGreyColorSemiMedium,
                )
        ],
      ),
    );
  }
}

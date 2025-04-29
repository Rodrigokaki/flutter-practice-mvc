import 'package:aula_mvc/components/custom_app_bar.dart';
import 'package:aula_mvc/controllers/navigation_controller.dart';
import 'package:aula_mvc/styles/app_styles.dart';
import 'package:flutter/material.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(nextPage: '/fourth', showBackButton: true),
      body: 
      Padding(
        padding: EdgeInsets.only(
          top: AppSpacing.garfieldTopPadding,
          left: AppSpacing.garfieldLeftPadding,
          right: AppSpacing.garfieldRightPadding,
          bottom: AppSpacing.garfieldBottomPadding
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: AppSpacing.garfieldImageHeight,
              width: AppSpacing.garfieldImageWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/garfield.png'),
                  fit: BoxFit.contain
                ),
              ),
            ),
            const Text(
              'Avaliação P1',
              style: AppTextStyles.defaultText,
              textAlign: TextAlign.center,
            ),
            const Text(
              'Tópicos Avançados',
              style: AppTextStyles.defaultText,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSpacing.garfieldSpaceBetweenTextAndButton),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: AppTextStyles.roundedButton(AppColors.buttonOrange),
                  onPressed: () {
                    NavigationController.goTo(context, '/fourth');
                  },
                  child: const Text(
                    'Tela Mickey',
                    style: AppTextStyles.buttonText,
                    ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: AppTextStyles.roundedButton(AppColors.buttonBlue),
                  onPressed: () {
                    NavigationController.goTo(context, '/fifth');
                  },
                  child: const Text(
                    'Tela Superman',
                    style: AppTextStyles.buttonText,
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
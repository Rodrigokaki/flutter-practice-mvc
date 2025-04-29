import 'package:aula_mvc/components/custom_app_bar.dart';
import 'package:aula_mvc/controllers/navigation_controller.dart';
import 'package:aula_mvc/styles/app_styles.dart';
import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/snoopy.png'),
                fit: BoxFit.contain
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.snoopyTopPadding,
              left: AppSpacing.snoopyLeftPadding,
              right: AppSpacing.snoopyRightPadding,
              bottom: AppSpacing.snoopyBottomPadding
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                SizedBox(height: AppSpacing.snoopySpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttonOrange),
                      onPressed: () {
                        NavigationController.goTo(context, '/third');
                      },
                      child: const Text(
                        'Tela Garfield',
                        style: AppTextStyles.buttonText,
                        ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttonBlue),
                      onPressed: () {
                        NavigationController.goTo(context, '/fourth');
                      },
                      child: const Text(
                        'Tela Mickey',
                        style: AppTextStyles.buttonText,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
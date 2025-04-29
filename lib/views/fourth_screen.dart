import 'package:aula_mvc/components/custom_app_bar.dart';
import 'package:aula_mvc/controllers/navigation_controller.dart';
import 'package:aula_mvc/styles/app_styles.dart';
import 'package:flutter/material.dart';


class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(nextPage: '/fifth', showBackButton: true),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mickey-mouse.png'),
                fit: BoxFit.contain
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.mickeyTopPadding,
              left: AppSpacing.mickeyLeftPadding,
              right: AppSpacing.mickeyRightPadding,
              bottom: AppSpacing.mickeyBottomPadding
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
                SizedBox(height: AppSpacing.mickeySpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttonOrange),
                      onPressed: () {
                        NavigationController.goTo(context, '/fifth');
                      },
                      child: const Text(
                        'Tela Superman',
                        style: AppTextStyles.buttonText,
                        ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttonBlue),
                      onPressed: () {
                        NavigationController.goTo(context, '/second');
                      },
                      child: const Text(
                        'Tela Snoopy',
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
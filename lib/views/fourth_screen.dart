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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.button1),
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
                      style: AppTextStyles.roundedButton(AppColors.button2),
                      onPressed: () {
                        NavigationController.goTo(context, '/second');
                      },
                      child: const Text(
                        'Tela Snoopy',
                        style: AppTextStyles.buttonText,
                      ),
                    )
                  ],
                ),
                SizedBox(height: AppSpacing.mickeySpaceBetweenTextAndButton),
                const Text(
                  'Atividade MVC',
                  style: AppTextStyles.defaultText,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Aprendendo Flutter',
                  style: AppTextStyles.defaultText,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
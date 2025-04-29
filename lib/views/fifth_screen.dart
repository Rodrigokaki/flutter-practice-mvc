import 'package:aula_mvc/components/custom_app_bar.dart';
import 'package:aula_mvc/controllers/navigation_controller.dart';
import 'package:aula_mvc/styles/app_styles.dart';
import 'package:flutter/material.dart';


class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/superMan2.png'),
                fit: BoxFit.contain
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.supermanTopPadding,
              left: AppSpacing.supermanLeftPadding,
              right: AppSpacing.supermanRightPadding,
              bottom: AppSpacing.supermanBottomPadding
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                SizedBox(height: AppSpacing.supermanSpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.button1),
                      onPressed: () {
                        NavigationController.goTo(context, '/second');
                      },
                      child: const Text(
                        'Tela Snoopy',
                        style: AppTextStyles.buttonText,
                        ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.button2),
                      onPressed: () {
                        NavigationController.goTo(context, '/third');
                      },
                      child: const Text(
                        'Tela Garfield',
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
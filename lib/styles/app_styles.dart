import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Color (0xFFFFFFFF); 
  static const Color black = Colors.black;
  static const Color lightGray = Color (0xFFD3D3D3); 
  static const Color appBar = Color(0xFF5A8AE0);

  static const Color button1 = Color (0xFF5ADEE0); 
  static const Color button2 = Color (0xFF815AE0); 
  static const Color buttonHome = Color.fromARGB(255, 54, 132, 163);
}
class AppTextStyles {
  static const TextStyle clockText = TextStyle(
    color: AppColors.white,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        blurRadius: 10.0,
        color: AppColors.black,
        offset: Offset(2, 2),
      ),
    ],
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle appBarText = TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold
  );

  static const TextStyle defaultText = TextStyle(
    color: AppColors.black,
    fontFamily: 'Sakitu',
    fontSize: 40
  );

  // Botão arredondado padrão (personalizável pela cor)
  static ButtonStyle roundedButton(Color backgroundColor){
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12)
    );
  }

  // Botão com fundo claro e borda arredondada
  static ButtonStyle lightRoundedButton(){
    return ElevatedButton.styleFrom(
      backgroundColor: AppColors.buttonHome,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14)
    );
  }

  // Botão com sombra sutil (opcional para fundo escuro)
  static ButtonStyle roundedButtonWithShadow(Color backgroundColor){
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      elevation: 6,
      // ignore: deprecated_member_use
      shadowColor: Colors.black.withOpacity(0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14)
    );
  }
}

class AppSpacing {
  // Garfield Screen
  static const double garfieldTopPadding = 20;
  static const double garfieldLeftPadding = 20;
  static const double garfieldRightPadding = 20;
  static const double garfieldSpaceBetweenTextAndButton = 20;
  static const double garfieldSpaceAfterButtons = 20;
  static const double garfieldBottomPadding = 20;
  static const double garfieldImageHeight = 500;
  static const double garfieldImageWidth = 500;

  // Mickey Screen
  static const double mickeyTopPadding = 100;
  static const double mickeyLeftPadding = 20;
  static const double mickeyRightPadding = 20;
  static const double mickeySpaceBetweenTextAndButton = 60;
  static const double mickeySpaceAfterButtons = 20;
  static const double mickeyBottomPadding = 20;

  // Snoopy Screen
  static const double snoopyTopPadding = 50;
  static const double snoopyLeftPadding = 20;
  static const double snoopyRightPadding = 20;
  static const double snoopySpaceBetweenTextAndButton = 80;
  static const double snoopySpaceAfterButtons = 20;
  static const double snoopyBottomPadding = 20;

  // Superman Screen
  static const double supermanTopPadding = 40;
  static const double supermanLeftPadding = 20;
  static const double supermanRightPadding = 20;
  static const double supermanSpaceBetweenTextAndButton = 20;
  static const double supermanSpaceAfterButtons = 20;
  static const double supermanBottomPadding = 20;
}
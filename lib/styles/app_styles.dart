import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Color (0xFFFFFFFF); 
  static const Color black = Colors.black;
  static const Color lightGray = Color (0xFFD3D3D3); 
  static const Color appBarBlue = Color(0xFF1976D2);

  static const Color buttonOrange = Color (0xFFFF9800); 
  static const Color buttonBlue = Color (0xFF2196F3); 
  static const Color buttonLightGray = Color (0xFFF5F5F5);
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
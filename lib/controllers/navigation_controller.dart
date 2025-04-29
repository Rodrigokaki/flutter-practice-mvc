import 'package:flutter/material.dart';

class NavigationController {
  static void goTo(BuildContext context, String routeName) { 
    Navigator.pushNamed(context, routeName);
  }
  static void goBack (BuildContext context) {
    Navigator.pop(context);
  }
}
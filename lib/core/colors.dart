import 'package:faction_store/utils/theme_check.dart';
import 'package:flutter/material.dart';

class AppColor {

  static Color secondaryTheme(context){
    return Theme.of(context).colorScheme.secondary;
  }

  static Color tertiaryTheme(context){
    return Theme.of(context).colorScheme.tertiary;
  }
  static Color blackOrWhite(context){
    return isDarkTheme(context)?Colors.white12:Colors.black12;
  }

  static Color backgroundSecondColor(context){
    return Theme.of(context).drawerTheme.backgroundColor!;//?Color.fromARGB(255, 29, 29, 29):Color.fromARGB(255, 196, 192, 174);
  }

  static const appColor = Color.fromRGBO(216,255,117, 1);
  static final secondColor = const Color.fromARGB(255, 128, 195, 250).withOpacity(0.2);
  static Color useFullColor = const Color.fromARGB(255, 255, 31, 31).withOpacity(0.5);

}
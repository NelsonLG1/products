import 'package:flutter/material.dart';
import 'package:products/apps/utils/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: appPrimaryColor,
      ),
    ),
    accentColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: IconThemeData(color: appSecondColor),
    buttonTheme: ButtonThemeData(
      minWidth: double.infinity,
      buttonColor: appPrimaryColor,
      textTheme: ButtonTextTheme.accent,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

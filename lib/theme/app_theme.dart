import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(13, 71, 161, 0.612);
  static const Color secondary = Color.fromRGBO(235, 120, 35, 90);
  static const Color disable = Color.fromRGBO(163, 161, 161, 0.651);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: const Color.fromRGBO(13, 71, 161, 100),
    appBarTheme: const AppBarTheme(color: primary, elevation: 3),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: secondary)),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: secondary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(235, 120, 35, 90),
        shape: const StadiumBorder(),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: secondary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondary),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondary),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: disable),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        )),
  );
}

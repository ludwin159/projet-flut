import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0
      ),

      // TextBotton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: primary
        )
      ),

      // Floating action button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5
      ),

      //Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: primary,
          shape: const StadiumBorder()
        )
      ),


      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          ),
          
        )
      )
  );

  //Dark theme
  static ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario
      primaryColor: Colors.indigo,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0
      ),

      scaffoldBackgroundColor:Colors.black
  );
}

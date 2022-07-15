// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color blueGreyColor = Color(0xFF363435);
  static const Color redColor = Color(0xFFB13336);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color greyColor = Color(0xFFEEEEEE);
  static const Color blackColor = Color(0xDD000000);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: redColor,
      primaryColorDark: redColor,
      primaryColorLight: redColor,
      scaffoldBackgroundColor: whiteColor,
      brightness: Brightness.light,
      appBarTheme: _appBarTheme,
      tabBarTheme: _tabBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      floatingActionButtonTheme: _floatingActionButtonTheme,
      textButtonTheme: _textButtonTheme,
      iconTheme: _iconThemeData,
      bottomSheetTheme: _bottomSheetThemeData,
      textTheme: lightTextTheme,
      inputDecorationTheme: _inputDecorationTheme,
      dividerTheme: _dividerTheme,
      cardTheme: cardTheme,
      snackBarTheme: snackBarThemeData,
      listTileTheme: listTileThemeData,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: redColor));

  static const AppBarTheme _appBarTheme = AppBarTheme(
      backgroundColor: whiteColor,
      centerTitle: true,
      iconTheme: _iconThemeData,
      titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: blueGreyColor));

  static final TabBarTheme _tabBarTheme = TabBarTheme(
      unselectedLabelColor: blueGreyColor,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
        color: redColor,
      ),
      labelColor: whiteColor,
      labelStyle: const TextStyle(color: blueGreyColor));

  static final ElevatedButtonThemeData _elevatedButtonTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: redColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)))));

  static const BottomNavigationBarThemeData _bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    selectedItemColor: redColor,
    unselectedItemColor: blueGreyColor,
    showSelectedLabels: true,
    showUnselectedLabels: true,
  );

  static const FloatingActionButtonThemeData _floatingActionButtonTheme =
      FloatingActionButtonThemeData(
    backgroundColor: whiteColor,
  );

  static final TextButtonThemeData _textButtonTheme =
      TextButtonThemeData(style: TextButton.styleFrom(primary: redColor));

  static const IconThemeData _iconThemeData = IconThemeData(
    color: blueGreyColor,
  );

  static const BottomSheetThemeData _bottomSheetThemeData =
      BottomSheetThemeData(
    backgroundColor: greyColor,
  );

  static const TextTheme lightTextTheme = TextTheme(
    bodyText1: _titleLight,
    bodyText2: _subTitleLight,
    button: _buttonLight,
  );

  static const TextStyle _titleLight = TextStyle(
    color: blueGreyColor,
    fontSize: 20.0,
  );

  static const TextStyle _subTitleLight = TextStyle(
    color: blueGreyColor,
    fontSize: 15.0,
  );
  static const TextStyle _buttonLight = TextStyle(
    color: whiteColor,
    fontSize: 15.0,
  );

  static const InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: redColor),
        borderRadius: BorderRadius.all(Radius.circular(5.0))),
    border: OutlineInputBorder(
        borderSide: BorderSide(color: blueGreyColor),
        borderRadius: BorderRadius.all(Radius.circular(5.0))),
    focusColor: redColor,
    iconColor: blueGreyColor,
    floatingLabelStyle: TextStyle(color: redColor),
    labelStyle: TextStyle(color: blueGreyColor),
  );

  static const DividerThemeData _dividerTheme = DividerThemeData(
    color: blueGreyColor,
  );

  static CardTheme cardTheme = const CardTheme(
    color: whiteColor,
    shape: OutlineInputBorder(
        borderSide: BorderSide(color: redColor),
        borderRadius: BorderRadius.all(Radius.circular(5.0))),
  );
  static SnackBarThemeData snackBarThemeData = const SnackBarThemeData(
    backgroundColor: redColor,
  );
  static ListTileThemeData listTileThemeData = const ListTileThemeData(
    iconColor: blueGreyColor,
    textColor: blueGreyColor,
  );
}

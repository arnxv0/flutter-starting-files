import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme) {
    ThemeData darkThemeData = ThemeData(
      fontFamily: 'Montserrat',
      primaryColor: const Color(0xff011627),
      canvasColor: const Color(0xff011627),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Color(0xffFDFFFC),
        ),
        bodyMedium: TextStyle(
          color: Color(0xff2EC4B6),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: const Color(0xff022C4E),
        // enabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Color(0xffD4D4D4)),
        // ),
        // focusedBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Color(0xffD4D4D4)),
        // ),
        contentPadding: const EdgeInsets.all(10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Color(0xff011627),
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff011627),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff011627),
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
      ),
    );

    ThemeData lightThemeData = ThemeData(
      fontFamily: 'Montserrat',
      primaryColor: const Color(0xffFDFFFC),
      canvasColor: const Color(0xffFDFFFC),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Color(0xff011627),
        ),
        bodyMedium: TextStyle(
          color: Color(0xff2EC4B6),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: const Color(0xffffffff),
        // enabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Color(0xff868383)),
        // ),
        // focusedBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Color(0xff868383)),
        // ),
        contentPadding: const EdgeInsets.all(10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Color(0xff011627),
          ),
        ),
        labelStyle: const TextStyle(
          color: Color(0xff011627),
          fontVariations: [
            FontVariation('wght', 400),
          ],
        ),
        hintStyle: const TextStyle(
          fontVariations: [
            FontVariation('wght', 400),
          ],
        ),
        focusColor: const Color(0xff011627),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffFDFFFC),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xffFDFFFC),
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
    );

    return isDarkTheme ? darkThemeData : lightThemeData;
  }
}

// ThemeData(
// fontFamily: 'Manrope',
// primarySwatch: Colors.red,
// primaryColor: isDarkTheme ? const Color(0xff202020) : Colors.white,
// backgroundColor:
// isDarkTheme ? const Color(0xff202020) : Colors.white,
// indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
// hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),
// highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
// hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
// focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
// disabledColor: Colors.grey,
// cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
// canvasColor: isDarkTheme ? const Color(0xff202020): Colors.grey[50],
// brightness: isDarkTheme ? Brightness.dark : Brightness.light,
// buttonTheme: Theme.of(context).buttonTheme.copyWith(
// colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
// appBarTheme: AppBarTheme(
// elevation: 0.0,
// ),
// textSelectionTheme: TextSelectionThemeData(
// selectionColor: isDarkTheme ? Colors.white : Colors.black),
// );

// Dark theme
// https://stackoverflow.com/questions/60232070/how-to-implement-dark-mode-in-flutter
// https://medium.flutterdevs.com/implement-dark-mode-in-flutter-using-provider-158925112bf9
// https://github.com/flutter-devs/Flutter-Devfest/blob/master/lib/ui/screens/home_screen.dart
// Theme.of(context).backgroundColor
// final themeProvider = Provider.of<DarkThemeProvider>(context);

// Theme stuff
// final themeChange = Provider.of<DarkThemeProvider>(context);
// Checkbox(
//    value: themeChange.darkTheme,
//    onChanged: (bool value) {
//      themeChange.darkTheme = value;
// })

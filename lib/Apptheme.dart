// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/Util/String.dart';
import 'package:my_protfolio/Util/responsive.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.lightTheme : ThemeColors.darkTheme;
  }

  TextStyle stylishNameStyle(BuildContext context) {
    return GoogleFonts.stylish(
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: MediaQuery.of(context).size.width > 1024 ? 32 : 20,
    );
  }

  static Row nameLogo(BuildContext context) {
    var textSty = GoogleFonts.stylish(
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: Responsive.isDesktop(context) ? 32 : 20,
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("<\ ", style: textSty),
        Text(StringTheme.name, style: textSty),
        Text(
          Responsive.isDesktop(context) ? " />\t\t" : " />",
          style: textSty,
        )
      ],
    );
  }
}

class ThemeColors {
  const ThemeColors._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'sans-serif',
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.light(
      background: lightBackgroundColor,
      primary: primaryColor,
      onPrimary: Colors.white,
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbVisibility: MaterialStateProperty.all(true),
      thickness: MaterialStateProperty.all(8),
      radius: const Radius.circular(10),
      thumbColor: MaterialStateProperty.all(primaryColor),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightBackgroundColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: const TextTheme(
      labelLarge:
          TextStyle(color: Colors.black), // replaces deprecated `button`
      bodyMedium: TextStyle(color: Colors.black87),
      bodySmall: TextStyle(color: Colors.black54),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'sans-serif',
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFF2D2E32),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.dark(
      background: darkBackgroundColor,
      primary: primaryColor,
      onPrimary: Colors.white,
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbVisibility: MaterialStateProperty.all(true),
      thickness: MaterialStateProperty.all(8),
      radius: const Radius.circular(10),
      thumbColor: MaterialStateProperty.all(primaryColor),
    ),
    textTheme: const TextTheme(
      labelLarge: TextStyle(color: lightgrayColor),
      bodyMedium: TextStyle(color: Colors.white70),
      bodySmall: TextStyle(color: Colors.white60),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkBackgroundColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

class ThemeColor {
  static Color navBarColor = Get.isDarkMode == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  static Color textColor = Get.isDarkMode == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);

  static Color secondaryColor = const Color(0xFFFE53BB);
  static Gradient serviceCard =
      Get.isDarkMode == Brightness.light ? grayWhite : grayBack;
  static Gradient contactCard =
      Get.isDarkMode == Brightness.light ? grayWhite : contactGradi;
}

const primaryColor = Color(0xFF09FBD4);
const secondaryColor = Color(0xFFFE53B5);

const textColor = Color(0xFF7D7E83);
const lightgrayColor = Color(0x44948282);
const whiteColor = Color(0xFFFFFFFF);
const blackColor = Color(0xFF212529);

Color lightBackgroundColor = const Color(0xFFffffff);

Color lightTextColor = const Color(0xFF7D7E83);

Color darkBackgroundColor = Color(0xFF504C48);

Color darkTextColor = const Color(0xFF2D2E32);

const pinkpurple = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0XFFaa367c), Color(0XFF4a2fbd)],
);
const primary = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF09FBD4),
    Color(0xFF09FBD4),
  ],
);
const grayBack = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0XFF2E2D36), Color(0XFF11101D)],
);
const grayWhite = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFFFFF), Color(0xFFF3F2FF)],
);

const buttonGradi = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0XFF7DE7EB), Color(0XFF33BBCF)],
);

const contactGradi = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0XFF2E2D36), Color(0XFF11101D)],
);

BoxShadow primaryColorShadow = BoxShadow(
  color: primaryColor.withAlpha(100),
  blurRadius: 12.0,
  offset: const Offset(0.0, 0.0),
);
BoxShadow blackColorShadow = BoxShadow(
  color: Colors.black.withAlpha(100),
  blurRadius: 12.0,
  offset: const Offset(0.0, 0.0),
);

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Space {
  static Widget? x(double no) => SizedBox(width: no);
  static Widget? y(double no) => SizedBox(height: no);
  static Widget? x1;

  static Widget? xm;

  static void init() {
    x1 = const SizedBox(width: 50);

    xm = const Expanded(child: SizedBox(width: double.infinity));
  }
}

class AppText {
  static TextStyle? btn;

  static TextStyle? h1;
  static TextStyle? h1b;
  static TextStyle? h2;
  static TextStyle? h2b;
  static TextStyle? h3;
  static TextStyle? h3b;

  static TextStyle? b1;
  static TextStyle? b1b;
  static TextStyle? b2;
  static TextStyle? b2b;

  static TextStyle? l1;
  static TextStyle? l1b;
  static TextStyle? l2;
  static TextStyle? l2b;

  static init() {
    const b = FontWeight.bold;
    // const baseStyle = TextStyle(fontFamily: 'Poppins');
    TextStyle baseStyle = GoogleFonts.poppins(
      fontSize: 22,
    );

    h1 = baseStyle.copyWith(fontSize: 22);
    h1b = h1!.copyWith(fontWeight: FontWeight.w600);

    h2 = baseStyle.copyWith(fontWeight: FontWeight.w400);
    h2b = h2!.copyWith(fontWeight: b);

    h3 = baseStyle.copyWith(fontWeight: FontWeight.w100);
    h3b = h3!.copyWith(fontWeight: FontWeight.w100);

    b1 = baseStyle.copyWith(fontSize: 20);
    b1b = b1!.copyWith(fontWeight: b);

    b2 = baseStyle.copyWith(fontSize: 18);
    b2b = b2!.copyWith(fontWeight: b);

    l1 = baseStyle.copyWith(fontSize: 16);
    l1b = l1!.copyWith(fontWeight: b);

    l2 = baseStyle.copyWith(fontSize: 14);
    l2b = l2!.copyWith(fontWeight: b);
  }
}

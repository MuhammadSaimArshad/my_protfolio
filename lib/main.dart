import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_protfolio/Apptheme.dart';
import 'package:my_protfolio/screen/bg.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(const MyApp());
}

var theme;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Saim',
          theme: AppTheme.themeData(false, context),
          darkTheme: AppTheme.themeData(true, context),
          home: const BG(),
        );
      },
    );
  }
}

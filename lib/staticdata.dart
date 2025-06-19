import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StaticData {
  static void openURL(String url) => launchUrl(Uri.parse(url));

  static double isFontSize(BuildContext context, double val) {
    double width = MediaQuery.of(context).size.width;
    if (width >= 1024) {
      return val;
    } else if (width < 1024 && width >= 600) {
      return val;
    } else {
      return val;
    }
  }
}

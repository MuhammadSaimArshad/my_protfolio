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

  static openWhatsAppChat() async {
    try {
      String url = "https://wa.me/+923059895650?text=Hello";

      await launch(url);
    } catch (e) {
      print("errorr$e");
    }
  }

  static openEmailChat() async {
    try {
      String url = 'mailto:saimarshad075@gmail.com';

      await launch(url);
    } catch (e) {
      print("errorr$e");
    }
  }
}

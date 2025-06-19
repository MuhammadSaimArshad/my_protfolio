import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyDrawerController extends GetxController {
  static MyDrawerController get to => Get.find();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }
}

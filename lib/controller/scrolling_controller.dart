// ignore_for_file: camel_case_types

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Scroll_Controller extends GetxController {
  static Scroll_Controller get to => Get.find();
  ItemScrollController itemScrollController = ItemScrollController();

  final scrollDuration = const Duration(seconds: 1);

  void jumpTo(int index) => itemScrollController.scrollTo(
      index: index,
      duration: scrollDuration,
      curve: Curves.easeInOutCubic,
      alignment: 0);
}

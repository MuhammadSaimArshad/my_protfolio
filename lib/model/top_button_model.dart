import 'package:flutter/material.dart';

class TopButtonModel {
  String name;
  IconData icon;
  TopButtonModel({
    required this.name,
    required this.icon,
  });
  static List<TopButtonModel> list = [
    TopButtonModel(
      name: 'HOME',
      icon: Icons.home,
    ),
    TopButtonModel(
      name: 'About',
      icon: Icons.work,
    ),
    TopButtonModel(
      name: 'Experience',
      icon: Icons.history_edu,
    ),
    TopButtonModel(
      name: 'Projects',
      icon: Icons.build,
    ),
    TopButtonModel(
      name: 'CONTACT',
      icon: Icons.contact_page,
    )
  ];
}

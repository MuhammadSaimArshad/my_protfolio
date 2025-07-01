// Social Media Icon Button
import 'package:flutter/material.dart';
import 'package:my_protfolio/Apptheme.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;

  const SocialIcon(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: const Color(0xFF25262B),
        child: Icon(icon, color: primaryColor, size: 16),
      ),
    );
  }
}

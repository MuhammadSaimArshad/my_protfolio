import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TechBullet extends StatelessWidget {
  final String text;
  const TechBullet(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          const Text("• ", style: TextStyle(color: Colors.white)),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.inter(color: Colors.white, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}

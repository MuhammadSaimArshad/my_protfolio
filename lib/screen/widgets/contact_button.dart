import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/Apptheme.dart';

class ContactButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback ontap;

  const ContactButton({
    super.key,
    required this.icon,
    required this.ontap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 70,
        width: 350,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? const Color(0xFF25262B)
              : Colors.grey,
          // color: const Color(0xFF25262B),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Icon(icon, color: primaryColor, size: 20),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.inter(color: primaryColor, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: primaryColor, size: 16)
          ],
        ),
      ),
    );
  }
}

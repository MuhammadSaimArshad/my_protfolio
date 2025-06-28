// widgets/experience_card_tablet.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/model/experience_model.dart';
import 'package:my_protfolio/screen/widgets/role_bullet.dart';
import 'package:my_protfolio/screen/widgets/tech_bullet.dart';

class MobileExperienceCard extends StatelessWidget {
  final ExperienceModel data;
  final Color primaryColor;

  const MobileExperienceCard({
    super.key,
    required this.data,
    this.primaryColor = const Color(0xFF09FBD4),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF25262B)
            : Colors.grey[400],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LEFT SIDE
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.company,
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  data.role,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  data.duration,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Technologies",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: data.technologies
                      .map((tech) => TechBullet(tech))
                      .toList(),
                ),
              ],
            ),
          ),

          const SizedBox(width: 30),

          // RIGHT SIDE
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: data.responsibilities
                  .map((role) => RoleBullet(role))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

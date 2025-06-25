import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:sizer/sizer.dart';

import '../Apptheme.dart';
import '../Util/String.dart';
import '../Util/responsive.dart';
import '../Util/sizedbox.dart';
import '../model/ContactModel.dart';
import '../staticdata.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  var height, width;

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    const greenColor = Color(0xFF4EFFA5);
    const bgColor = Color(0xFF1D1E22);
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width / 9.9)
            .copyWith(bottom: height * 0.2),
        child: Responsive(
          desktop: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("Get in touch",
                    style: GoogleFonts.inter(
                      color: greenColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 6),
                Text("Let's build something together :)",
                    style: GoogleFonts.inter(
                      color: Colors.white70,
                      fontSize: 14,
                    )),
                const SizedBox(height: 40),

                // Date Card and Contact Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Date Card
                    Column(
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Center(
                            child: Text(
                              "June",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                "24",
                                style: GoogleFonts.inter(
                                    fontSize: 38,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Tuesday",
                                style: GoogleFonts.inter(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 20),

                    // Contact Info
                    Column(
                      children: [
                        ContactButton(
                          icon: Icons.email,
                          text: 'saimArshad@gmail.com',
                        ),
                        const SizedBox(height: 10),
                        ContactButton(
                          icon: Icons.phone,
                          text: '+92 305 9895650',
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Book Button
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: greenColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.video_call),
                  label: Text(
                    'Book a 45 mins session',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                  ),
                ),

                const SizedBox(height: 30),

                // Social Icons
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: ContactModel.contactModel
                      .asMap()
                      .entries
                      .map<Widget>((e) => IconButton(
                            padding: const EdgeInsets.all(4),
                            constraints: const BoxConstraints(),
                            icon: Image.network(
                              e.value.icon,
                              color: ThemeColor.textColor,
                              width: 20,
                              height: 20,
                            ),
                            onPressed: () => StaticData.openURL(e.value.url),
                            highlightColor: Colors.white54,
                            iconSize: 18,
                          ))
                      .toList(),
                ),

                const SizedBox(height: 40),

                // Footer
                Text.rich(
                  TextSpan(
                    text: 'Designed & Crafted by ',
                    style: GoogleFonts.inter(color: Colors.white54),
                    children: [
                      TextSpan(
                        text: ' Muhammad Saim Arshad',
                        style: GoogleFonts.inter(color: greenColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          tablet: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("Get in touch",
                    style: GoogleFonts.inter(
                      color: greenColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 6),
                Text("Let's build something together :)",
                    style: GoogleFonts.inter(
                      color: Colors.white70,
                      fontSize: 14,
                    )),
                const SizedBox(height: 40),

                // Date Card and Contact Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Date Card
                    Column(
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Center(
                            child: Text(
                              "June",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                "24",
                                style: GoogleFonts.inter(
                                    fontSize: 38,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Tuesday",
                                style: GoogleFonts.inter(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 20),

                    // Contact Info
                    Column(
                      children: [
                        ContactButton(
                          icon: Icons.email,
                          text: 'saimArshad@gmail.com',
                        ),
                        const SizedBox(height: 10),
                        ContactButton(
                          icon: Icons.phone,
                          text: '+92 305 9895650',
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Book Button
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: greenColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.video_call),
                  label: Text(
                    'Book a 45 mins session',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                  ),
                ),

                const SizedBox(height: 30),

                // Social Icons
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: ContactModel.contactModel
                      .asMap()
                      .entries
                      .map<Widget>((e) => IconButton(
                            padding: const EdgeInsets.all(4),
                            constraints: const BoxConstraints(),
                            icon: Image.network(
                              e.value.icon,
                              color: ThemeColor.textColor,
                              width: 20,
                              height: 20,
                            ),
                            onPressed: () => StaticData.openURL(e.value.url),
                            highlightColor: Colors.white54,
                            iconSize: 18,
                          ))
                      .toList(),
                ),

                const SizedBox(height: 40),

                // Footer
                Text.rich(
                  TextSpan(
                    text: 'Designed & Crafted by ',
                    style: GoogleFonts.inter(color: Colors.white54),
                    children: [
                      TextSpan(
                        text: ' Muhammad Saim Arshad',
                        style: GoogleFonts.inter(color: greenColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          mobile: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("Get in touch",
                    style: GoogleFonts.inter(
                      color: greenColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 6),
                Text("Let's build something together :)",
                    style: GoogleFonts.inter(
                      color: Colors.white70,
                      fontSize: 14,
                    )),
                const SizedBox(height: 40),

                // Date Card and Contact Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Date Card
                    Column(
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Center(
                            child: Text(
                              "June",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                "24",
                                style: GoogleFonts.inter(
                                    fontSize: 38,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Tuesday",
                                style: GoogleFonts.inter(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 20),

                    // Contact Info
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    ContactButton(
                      icon: Icons.email,
                      text: 'saimArshad@gmail.com',
                    ),
                    const SizedBox(height: 10),
                    ContactButton(
                      icon: Icons.phone,
                      text: '+92 305 9895650',
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Book Button
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: greenColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.video_call),
                  label: Text(
                    'Book a 45 mins session',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                  ),
                ),

                const SizedBox(height: 30),

                // Social Icons
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: ContactModel.contactModel
                      .asMap()
                      .entries
                      .map<Widget>((e) => IconButton(
                            padding: const EdgeInsets.all(4),
                            constraints: const BoxConstraints(),
                            icon: Image.network(
                              e.value.icon,
                              color: ThemeColor.textColor,
                              width: 20,
                              height: 20,
                            ),
                            onPressed: () => StaticData.openURL(e.value.url),
                            highlightColor: Colors.white54,
                            iconSize: 18,
                          ))
                      .toList(),
                ),

                const SizedBox(height: 40),

                // Footer
                Text.rich(
                  TextSpan(
                    text: 'Designed & Crafted by ',
                    style: GoogleFonts.inter(color: Colors.white54),
                    children: [
                      TextSpan(
                        text: ' Muhammad Saim Arshad',
                        style: GoogleFonts.inter(color: greenColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ContactButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    const greenColor = Color(0xFF4EFFA5);

    return Container(
      width: 240,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF25262B),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: greenColor, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.inter(color: greenColor, fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: greenColor, size: 14)
        ],
      ),
    );
  }
}

// Social Media Icon Button
class SocialIcon extends StatelessWidget {
  final IconData icon;

  const SocialIcon(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    const greenColor = Color(0xFF4EFFA5);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: const Color(0xFF25262B),
        child: Icon(icon, color: greenColor, size: 16),
      ),
    );
  }
}

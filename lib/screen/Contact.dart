import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:intl/intl.dart';
import 'package:my_protfolio/screen/widgets/contact_button.dart';
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
    final now = DateTime.now();
    final String month = DateFormat.MMMM().format(now); // June
    final String day = DateFormat.EEEE().format(now); // Tuesday
    final String date = DateFormat.d().format(now); // 24
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
                      color: primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 6),
                Text("Let's build something together :)",
                    style: GoogleFonts.inter(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white54
                          : Colors.grey,
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
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Center(
                            child: Text(
                              month,
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
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.black
                                    : Colors.grey,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                date,
                                style: GoogleFonts.inter(
                                    fontSize: 38,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                day,
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
                    backgroundColor: primaryColor,
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
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? ThemeColor.textColor
                                  : Colors.black,
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
                    style: GoogleFonts.inter(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white54
                          : Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: ' Muhammad Saim Arshad',
                        style: GoogleFonts.inter(color: primaryColor),
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
                      color: primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 6),
                Text("Let's build something together :)",
                    style: GoogleFonts.inter(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white54
                          : Colors.grey,
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
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Center(
                            child: Text(
                              month,
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
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.black
                                    : Colors.grey,
                            // color: Colors.black,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                date,
                                style: GoogleFonts.inter(
                                    fontSize: 38,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                day,
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
                    backgroundColor: primaryColor,
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
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? ThemeColor.textColor
                                  : Colors.black,
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
                    style: GoogleFonts.inter(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white54
                          : Colors.grey,
                    ),
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
                      color: primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 6),
                Text("Let's build something together :)",
                    style: GoogleFonts.inter(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white54
                          : Colors.grey,
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
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Center(
                            child: Text(
                              month,
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
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.black
                                    : Colors.grey,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                date,
                                style: GoogleFonts.inter(
                                    fontSize: 38,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                day,
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
                    backgroundColor: primaryColor,
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
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? ThemeColor.textColor
                                  : Colors.black,
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
                    style: GoogleFonts.inter(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white54
                          : Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: ' Muhammad Saim Arshad',
                        style: GoogleFonts.inter(color: primaryColor),
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
        child: Icon(icon, color: primaryColor, size: 16),
      ),
    );
  }
}

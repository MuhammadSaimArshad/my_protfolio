import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:intl/intl.dart';
import 'package:my_protfolio/screen/widgets/contact_button.dart';
import '../Apptheme.dart';
import '../Util/responsive.dart';
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

    final now = DateTime.now();
    final String month = DateFormat.MMMM().format(now); // June
    final String day = DateFormat.EEEE().format(now); // Tuesday
    final String date = DateFormat.d().format(now); // 24
    return Responsive(
      desktop: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 90,
          ),
          Text("Get in touch",
              style: GoogleFonts.inter(
                color: primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              )),
          const SizedBox(height: 6),
          Text("Let's build something together :)",
              style: GoogleFonts.inter(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white54
                    : Colors.grey,
                fontSize: 18,
              )),
          const SizedBox(height: 100),

          // Date Card and Contact Info
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Date Card
              Column(
                children: [
                  Container(
                    width: 300,
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
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
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
                  SizedBox(height: 20),
                  // Book Button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(width * 0.22, 50),
                      foregroundColor: Colors.black,
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.videocam_sharp,
                      color: Colors.black,
                      size: 25,
                    ),
                    label: Text(
                      'Book A 30 Mins Session',
                      style: GoogleFonts.inter(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 40),

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
                  const SizedBox(height: 20),
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
                                width: 50,
                                height: 30,
                              ),
                              onPressed: () => StaticData.openURL(e.value.url),
                              highlightColor: Colors.white54,
                              iconSize: 50,
                            ))
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 200,
          ),
          // Footer
          Container(
            height: 60,
            width: double.infinity,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.grey[200],
            child: Center(
              child: Text.rich(
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
            ),
          ),
        ],
      ),
      tablet: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 90,
          ),
          Text("Get in touch",
              style: GoogleFonts.inter(
                color: primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              )),
          const SizedBox(height: 6),
          Text("Let's build something together :)",
              style: GoogleFonts.inter(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white54
                    : Colors.grey,
                fontSize: 18,
              )),
          const SizedBox(height: 100),

          // Date Card and Contact Info
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Date Card
              Column(
                children: [
                  Container(
                    width: 300,
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
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
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
                  SizedBox(height: 20),
                  // Book Button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(width * 0.3, 50),
                      foregroundColor: Colors.black,
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.videocam_sharp,
                      color: Colors.black,
                      size: 25,
                    ),
                    label: Text(
                      'Book A 30 Mins Session',
                      style: GoogleFonts.inter(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 40),

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
                  Divider(color: primaryColor),
                  const SizedBox(height: 20),
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
                                width: 50,
                                height: 30,
                              ),
                              onPressed: () => StaticData.openURL(e.value.url),
                              highlightColor: Colors.white54,
                              iconSize: 50,
                            ))
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 200,
          ),
          // Footer
          Container(
            height: 60,
            width: double.infinity,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.grey[200],
            child: Center(
              child: Text.rich(
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
            ),
          ),

          // SizedBox(
          //   height: 30,
          // ),
          // Text("Get in touch",
          //     style: GoogleFonts.inter(
          //       color: primaryColor,
          //       fontSize: 24,
          //       fontWeight: FontWeight.w700,
          //     )),
          // const SizedBox(height: 6),
          // Text("Let's build something together :)",
          //     style: GoogleFonts.inter(
          //       color: Theme.of(context).brightness == Brightness.dark
          //           ? Colors.white54
          //           : Colors.grey,
          //       fontSize: 14,
          //     )),
          // const SizedBox(height: 40),

          // // Date Card and Contact Info
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     // Date Card
          //     Column(
          //       children: [
          //         Container(
          //           width: 160,
          //           decoration: BoxDecoration(
          //             color: primaryColor,
          //             borderRadius: const BorderRadius.only(
          //                 topLeft: Radius.circular(8),
          //                 topRight: Radius.circular(8)),
          //           ),
          //           padding: const EdgeInsets.all(12),
          //           child: Center(
          //             child: Text(
          //               month,
          //               style: GoogleFonts.inter(
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.w700,
          //                   color: Colors.black),
          //             ),
          //           ),
          //         ),
          //         Container(
          //           width: 160,
          //           decoration: BoxDecoration(
          //             color: Theme.of(context).brightness == Brightness.dark
          //                 ? Colors.black
          //                 : Colors.grey,
          //             // color: Colors.black,
          //             borderRadius: const BorderRadius.only(
          //                 bottomLeft: Radius.circular(8),
          //                 bottomRight: Radius.circular(8)),
          //           ),
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 30, horizontal: 10),
          //           child: Column(
          //             children: [
          //               Text(
          //                 date,
          //                 style: GoogleFonts.inter(
          //                     fontSize: 38,
          //                     fontWeight: FontWeight.w800,
          //                     color: Colors.white),
          //               ),
          //               const SizedBox(height: 10),
          //               Text(
          //                 day,
          //                 style: GoogleFonts.inter(
          //                     fontSize: 14, color: Colors.white),
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),

          //     const SizedBox(width: 20),

          //     // Contact Info
          //     Column(
          //       children: [
          //         ContactButton(
          //           icon: Icons.email,
          //           text: 'saimArshad@gmail.com',
          //         ),
          //         const SizedBox(height: 10),
          //         ContactButton(
          //           icon: Icons.phone,
          //           text: '+92 305 9895650',
          //         ),
          //       ],
          //     ),
          //   ],
          // ),

          // const SizedBox(height: 20),

          // // Book Button
          // ElevatedButton.icon(
          //   style: ElevatedButton.styleFrom(
          //     foregroundColor: Colors.black,
          //     backgroundColor: primaryColor,
          //     padding:
          //         const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(6)),
          //   ),
          //   onPressed: () {},
          //   icon: const Icon(Icons.video_call),
          //   label: Text(
          //     'Book a 45 mins session',
          //     style: GoogleFonts.inter(fontWeight: FontWeight.w600),
          //   ),
          // ),

          // const SizedBox(height: 30),

          // // Social Icons
          // Wrap(
          //   alignment: WrapAlignment.center,
          //   crossAxisAlignment: WrapCrossAlignment.center,
          //   children: ContactModel.contactModel
          //       .asMap()
          //       .entries
          //       .map<Widget>((e) => IconButton(
          //             padding: const EdgeInsets.all(4),
          //             constraints: const BoxConstraints(),
          //             icon: Image.network(
          //               e.value.icon,
          //               color: Theme.of(context).brightness == Brightness.dark
          //                   ? ThemeColor.textColor
          //                   : Colors.black,
          //               width: 20,
          //               height: 20,
          //             ),
          //             onPressed: () => StaticData.openURL(e.value.url),
          //             highlightColor: Colors.white54,
          //             iconSize: 18,
          //           ))
          //       .toList(),
          // ),

          // const SizedBox(height: 40),

          // // Footer
          // Text.rich(
          //   TextSpan(
          //     text: 'Designed & Crafted by ',
          //     style: GoogleFonts.inter(
          //       color: Theme.of(context).brightness == Brightness.dark
          //           ? Colors.white54
          //           : Colors.grey,
          //     ),
          //     children: [
          //       TextSpan(
          //         text: ' Muhammad Saim Arshad',
          //         style: GoogleFonts.inter(color: greenColor),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      mobile: Column(
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
                fontWeight: FontWeight.w500,
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
                    width: 300,
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
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
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
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          day,
                          style: GoogleFonts.inter(
                              fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Book Button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(width * 0.6, 40),
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
                      'Book a 30 mins session',
                      style: GoogleFonts.inter(fontWeight: FontWeight.w600),
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
                        color: Theme.of(context).brightness == Brightness.dark
                            ? ThemeColor.textColor
                            : Colors.black,
                        width: 50,
                        height: 30,
                      ),
                      onPressed: () => StaticData.openURL(e.value.url),
                      highlightColor: Colors.white54,
                      iconSize: 30,
                    ))
                .toList(),
          ),

          const SizedBox(height: 40),

          // Footer
          Container(
            height: 40,
            width: double.infinity,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.grey[200],
            child: Center(
              child: Text.rich(
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
            ),
          ),
        ],
      ),
    );
  }
}

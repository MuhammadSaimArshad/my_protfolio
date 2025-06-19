import 'package:flutter/material.dart';
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

    return Responsive.isDesktop(context)
        ? Container(
            // padding: Space.all(1, 1),
            // padding: EdgeInsets.symmetric(horizontal: AppDimensions.normalize(30)),
            padding: EdgeInsets.symmetric(horizontal: width / 8),
            child: Column(
              children: [
                Text(
                  "\nGet in Touch",
                  style: TextStyle(
                      fontSize: Responsive.isDesktop(context)
                          ? 56
                          : Responsive.isTablet(context)
                              ? 36
                              : 26),
                ),

                Space.y(1.w)!,
                Text(
                  "If you want to avail my services you can contact me at the links below.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ThemeColor.textColor.withOpacity(0.6),
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 13,
                  ),
                ),

                Space.y(2.w)!,
                Container(
                  padding: EdgeInsets.all(width * 0.05).copyWith(bottom: 10),
                  decoration: BoxDecoration(
                    gradient: ThemeColor.contactCard,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [blackColorShadow],
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringTheme.contactHeadding,
                                style: TextStyle(
                                  height: 1.2,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              Space.y(1.w)!,
                              Text(
                                StringTheme.contactSubHeadding,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              Space.y(2.w)!,
                              // SizedBox(height: AppDimensions.space(3)),
                            ],
                          ),
                          InkWell(
                            onTap: () =>
                                StaticData.openURL(StringTheme.whatsapp),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              decoration: BoxDecoration(
                                  color: Color(0xFF09FBD4),

                                  // gradient: primary,
                                  // border: Border.all(
                                  //     width: 2.0, color: theme.primaryColor),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: textColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          color: Colors.white.withOpacity(0.2), height: 1),
                      Space.y(2.w)!,
                      Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          // runSpacing: 12,
                          children: ContactModel.contactModel
                              .asMap()
                              .entries
                              .map<Widget>((e) => IconButton(
                                    icon: Image.network(
                                      e.value.icon,
                                      color: ThemeColor.textColor,
                                    ),
                                    onPressed: () =>
                                        StaticData.openURL(e.value.url),
                                    highlightColor: Colors.white54,
                                    iconSize: 08,
                                  ))
                              .toList()),
                    ],
                  ),
                ),
                // Space.y!,
              ],
            ),
          )
        : Column(
            children: [
              Space.y(10.w)!,
              Text(
                "\nGet in Touch",
                style: TextStyle(
                    fontSize: Responsive.isDesktop(context)
                        ? 56
                        : Responsive.isTablet(context)
                            ? 36
                            : 26),
              ),
              Space.y(3.w)!,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  "If you want to avail my services you can contact me at the links below.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ThemeColor.textColor.withOpacity(0.6),
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 13,
                  ),
                ),
              ),
              Space.y(5.w)!,
              InkWell(
                onTap: () => StaticData.openURL(StringTheme.whatsapp),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFF09FBD4),

                      // gradient: buttonGradi,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              Space.y(10.w)!,
              // Wrap(
              //     alignment: WrapAlignment.center,
              //     runSpacing: 50,
              //     children: ContactModel.contactModel
              //         .asMap()
              //         .entries
              //         .map((e) => IconButton(
              //               icon: Image.network(
              //                 e.value.icon,
              //                 color: ThemeColor.textColor,
              //               ),
              //               onPressed: () => StaticData.openURL(e.value.url),
              //               highlightColor: Colors.white54,
              //               iconSize: 21,
              //             ))
              //         .toList()),
              Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  // runSpacing: 12,
                  children: ContactModel.contactModel
                      .asMap()
                      .entries
                      .map<Widget>((e) => IconButton(
                            icon: Image.network(
                              e.value.icon,
                              color: ThemeColor.textColor,
                            ),
                            onPressed: () => StaticData.openURL(e.value.url),
                            highlightColor: Colors.white54,
                            iconSize: 08,
                          ))
                      .toList()),
              Space.y(5.w)!,
              Container(color: Colors.white.withOpacity(0.2), height: 1),
            ],
          );
  }
}

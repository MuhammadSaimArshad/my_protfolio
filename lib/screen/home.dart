import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Animation/EntranceFader.dart';
import '../Animation/image_animation.dart';
import '../Util/String.dart';
import '../Util/image.dart';
import '../Util/responsive.dart';
import '../Util/sizedbox.dart';
import '../staticdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? SizedBox(
            height: 80.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    width: 55.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            EntranceFader(
                              offset: const Offset(0, 0),
                              delay: const Duration(seconds: 2),
                              duration: const Duration(milliseconds: 800),
                              child: Image.asset(StaticImage.hi, height: 40),
                            ),
                          ],
                        ),
                        Space.y(0.5.w)!,
                        Text(StringTheme.yourname,
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                            )),
                        Row(
                          children: [
                            AnimatedTextKit(
                              displayFullTextOnTap: true,
                              isRepeatingAnimation: true,
                              repeatForever: true,
                              animatedTexts: StringTheme.desktopList,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const ImageAnimations(),
                ],
              ),
            ),
          )
        : Responsive.isTablet(context)
            ? SizedBox(
                height: 60.h,
                child: Stack(
                  children: [
                    Positioned(
                      right: 10.w,
                      bottom: 5.w,
                      child: const EntranceFader(
                        offset: Offset(0, 0),
                        delay: Duration(seconds: 1),
                        duration: Duration(milliseconds: 800),
                        child: ImageAnimations(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 08.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              EntranceFader(
                                offset: const Offset(0, 0),
                                delay: const Duration(seconds: 2),
                                duration: const Duration(milliseconds: 800),
                                child:
                                    Image.asset(StaticImage.hi, height: 10.sp),
                              ),
                            ],
                          ),
                          Space.y(1.w)!,
                          Text(
                            StringTheme.yourname,
                            style: TextStyle(
                              fontSize: StaticData.isFontSize(context, 38),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          EntranceFader(
                            offset: const Offset(-10, 0),
                            delay: const Duration(seconds: 1),
                            duration: const Duration(milliseconds: 800),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: StringTheme.tabList,
                                  isRepeatingAnimation: true,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Padding(
                padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(StaticImage.hi, height: 10.sp),
                      ],
                    ),
                    Text(
                      StringTheme.yourname,
                      style: TextStyle(
                        fontSize: StaticData.isFontSize(context, 28),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Space.y(1.w)!,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AnimatedTextKit(
                          animatedTexts: StringTheme.mobileList,
                          repeatForever: true,
                          isRepeatingAnimation: true,
                        ),
                      ],
                    ),
                    Space.y(2.w)!,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 200,
                          width: 300,
                          child: const EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 1),
                            duration: Duration(milliseconds: 800),
                            child: ImageAnimations(),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
  }
}

downloadresume() async {
  try {
    String url =
        "https://drive.google.com/file/d/1jjJyUVWCDwGd61G0ESFuZvaYoxI23ccF/view?usp=sharing";

    await launch(url);
  } catch (e) {
    print("errorr${e}");
  }
}

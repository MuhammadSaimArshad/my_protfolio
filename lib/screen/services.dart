import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Apptheme.dart';
import '../Util/String.dart';
import '../Util/responsive.dart';
import '../Util/service_card.dart';
import '../Util/sizedbox.dart';
import '../model/services_model.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    if (Responsive.isDesktop(context)) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: width / 8)
            .copyWith(bottom: height * 0.2),
        child: Column(
          children: [
            const Responsive(
              desktop: Text(
                '\nWhat I can do?',
                style: TextStyle(fontSize: 56),
              ),
              tablet: Text(
                '\nWhat I can do?',
                style: TextStyle(fontSize: 36),
              ),
              mobile: Text(
                '\nWhat I can do?',
                style: TextStyle(fontSize: 26),
              ),
            ),
            Space.y(1.w)!,
            Responsive(
              desktop: Text(
                StringTheme.servicesSubHeading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ThemeColor.textColor.withOpacity(0.6),
                  fontSize: 18,
                ),
              ),
              tablet: Text(
                StringTheme.servicesSubHeading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ThemeColor.textColor.withOpacity(0.6),
                  fontSize: 16,
                ),
              ),
              mobile: Text(
                StringTheme.servicesSubHeading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ThemeColor.textColor.withOpacity(0.6),
                  fontSize: 13,
                ),
              ),
            ),
            Space.y(2.w)!,
            Wrap(
              spacing: width * 0.03,
              runSpacing: height * 0.05,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: ServicesModel.servicesUtils
                  .asMap()
                  .entries
                  .map<Widget>((e) => ServiceCard(service: e.value))
                  .toList(),
            )
          ],
        ),
      );
    } else {
      return Column(
        children: [
          const Responsive(
            desktop: Text(
              '\nWhat I can do?',
              style: TextStyle(fontSize: 56),
            ),
            tablet: Text(
              '\nWhat I can do?',
              style: TextStyle(fontSize: 36),
            ),
            mobile: Text(
              '\nWhat I can do?',
              style: TextStyle(fontSize: 26),
            ),
          ),
          Space.y(3.w)!,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Responsive(
              desktop: Text(
                StringTheme.servicesSubHeading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ThemeColor.textColor.withOpacity(0.6),
                  fontSize: 18,
                ),
              ),
              tablet: Text(
                StringTheme.servicesSubHeading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ThemeColor.textColor.withOpacity(0.6),
                  fontSize: 16,
                ),
              ),
              mobile: Text(
                StringTheme.servicesSubHeading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ThemeColor.textColor.withOpacity(0.6),
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Space.y(5.w)!,
          CarouselSlider.builder(
            itemCount: ServicesModel.servicesUtils.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: EdgeInsets.symmetric(vertical: 0.5.w),
              child: ServiceCard(service: ServicesModel.servicesUtils[i]),
            ),
            options: CarouselOptions(
              viewportFraction: 0.6,
              height: 300,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          )
        ],
      );
    }
  }
}

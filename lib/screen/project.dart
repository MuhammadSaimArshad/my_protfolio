import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Apptheme.dart';
import '../Util/String.dart';
import '../Util/colorChangebuttom.dart';
import '../Util/project_card.dart';
import '../Util/responsive.dart';
import '../Util/sizedbox.dart';
import '../model/project_model.dart';
import '../staticdata.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  // ignore: prefer_typing_uninitialized_variables
  var height, width;
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Responsive.isDesktop(context)
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: width / 8),
            child: Column(
              children: [
                Text(
                  "\nProjects",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: Responsive.isDesktop(context)
                          ? 56
                          : Responsive.isTablet(context)
                              ? 36
                              : 26),
                ),
                Space.y(1.w)!,
                Text(
                  StringTheme.protfolioSubHeading,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white70
                        : Colors.grey,
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 13,
                  ),
                ),
                Space.y(2.w)!,
                Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runSpacing: 3.w,
                  children: ProjectModel.projectmodel
                      .asMap()
                      .entries
                      .map<Widget>(
                        (e) => ProjectCard(project: e.value),
                      )
                      .toList(),
                ),
                Space.y(3.w)!,
                SizedBox(
                  height: 7.h,
                  width: 12.w,
                  child: ColorChageButton(
                    text: "See More",
                    onTap: () {
                      StaticData.openURL(StringTheme.gitHub);
                    },
                  ),
                ),
              ],
            ),
          )
        : Column(
            children: [
              Text(
                "\nProjects",
                style: TextStyle(
                    color: primaryColor,
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
                  StringTheme.protfolioSubHeading,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white70
                        : Colors.grey,
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 13,
                  ),
                ),
              ),
              Space.y(6.w)!,
              CarouselSlider.builder(
                itemCount: ProjectModel.projectmodel.length,
                itemBuilder: (BuildContext context, int itemIndex, int i) =>
                    Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: ProjectCard(project: ProjectModel.projectmodel[i]),
                ),
                options: CarouselOptions(
                  height: height * 0.4,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: false,
                ),
              ),
              Space.y(3.w)!,
              OutlinedButton(
                onPressed: () => StaticData.openURL(StringTheme.gitHub),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          );
  }
}

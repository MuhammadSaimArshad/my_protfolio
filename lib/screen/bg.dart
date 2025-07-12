import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_protfolio/screen/MobileDrawer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../Apptheme.dart';
import '../Util/responsive.dart';
import '../controller/drawerController.dart';
import '../controller/scrolling_controller.dart';
import 'NavBar/Nav_Desktop.dart';
import 'NavBar/Nav_tablet.dart';
import 'Pages.dart';

class BG extends StatefulWidget {
  const BG({Key? key}) : super(key: key);

  @override
  State<BG> createState() => _BGState();
}

class _BGState extends State<BG> {
  @override
  void initState() {
    Get.put(MyDrawerController());
    Get.put(Scroll_Controller());
    super.initState();
  }

  // ignore: prefer_typing_uninitialized_variables
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: MyDrawerController.to.scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Responsive(
          desktop: NavbarDesktop(),
          mobile: NavTablet(),
          tablet: NavTablet(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
      body: GetBuilder<MyDrawerController>(
        builder: (obj) {
          return Stack(
            children: [
              Positioned(
                top: height * 0.2,
                left: -88,
                child: Container(
                  height: height / 3,
                  width: 166,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: darkBackgroundColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                right: -100,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: darkBackgroundColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 500,
                      sigmaY: 500,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),

              ScrollablePositionedList.builder(
                padding: EdgeInsets.zero,
                itemCount: PagesList.views.length,
                itemBuilder: (context, index) => PagesList.views[index],
                itemScrollController: Scroll_Controller.to.itemScrollController,
              ),
              // const ArrowOnTop()
            ],
          );
        },
      ),
    );
  }
}

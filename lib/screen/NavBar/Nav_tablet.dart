import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../Apptheme.dart';
import '../../Util/responsive.dart';
import '../../controller/drawerController.dart';

class NavTablet extends StatefulWidget {
  const NavTablet({super.key});

  @override
  State<NavTablet> createState() => _NavTabletState();
}

class _NavTabletState extends State<NavTablet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      color: Get.isDarkMode ? ThemeColor.navBarColor : Colors.white,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 10.w : 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              MyDrawerController.to.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          const Expanded(child: SizedBox()),
          AppTheme.nameLogo(context),
          // Space.x1!,
        ],
      ),
    );
  }
}

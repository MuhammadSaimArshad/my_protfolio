import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_protfolio/Util/image.dart';
import '../../Apptheme.dart';
import '../../Util/topButton.dart';
import '../../model/top_button_model.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 15, vertical: 10),
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.black
          : Colors.white,
      child: Row(
        children: [
          AppTheme.nameLogo(context),
          const Spacer(),
          ...TopButtonModel.list.asMap().entries.map<Widget>(
                (MapEntry<int, TopButtonModel> entry) => TopButton(
                  label: entry.value.name,
                  index: entry.key,
                ),
              ),
          InkWell(
              onTap: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(ThemeColors.lightTheme);
                } else {
                  Get.changeTheme(ThemeColors.darkTheme);

                  // AppTheme.themeData(true, context);
                }
                setState(() {});
              },
              child: Image.network(
                Get.isDarkMode ? StaticImage.darkIcon : StaticImage.lightIcon,
                height: 30,
                width: 30,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              )),
        ],
      ),
    );
  }
}

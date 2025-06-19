import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

import '../Apptheme.dart';
import '../Util/String.dart';
import '../Util/colorChangebuttom.dart';
import '../Util/sizedbox.dart';
import '../controller/scrolling_controller.dart';
import '../model/top_button_model.dart';
import '../staticdata.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    return Drawer(
        child: Material(
      color: theme.scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.only(top: 2.h),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: AppTheme.nameLogo(context)),
            const Divider(),
            ListTile(
              leading: Icon(
                Get.isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode,
                // color: theme.textColor,
              ),
              title: Text(Get.isDarkMode ? "Light Mode" : "Dark Mode"),
              trailing: Switch(
                value: Get.isDarkMode,
                activeColor: theme.primaryColor,
                inactiveTrackColor: Colors.grey,
                onChanged: (newValue) {
                  if (Get.isDarkMode) {
                    Get.changeTheme(ThemeColors.lightTheme);
                  } else {
                    Get.changeTheme(ThemeColors.darkTheme);

                    // AppTheme.themeData(true, context);
                  }
                  setState(() {});
                },
              ),
            ),
            const Divider(),
            ...TopButtonModel.list.asMap().entries.map<Widget>(
                  (MapEntry<int, TopButtonModel> e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      hoverColor: theme.primaryColor.withAlpha(70),
                      onPressed: () {
                        // scrollProvider.scrollMobile(e.key);
                        Scroll_Controller.to.jumpTo(e.key);
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        leading: Icon(
                          TopButtonModel.list[e.key].icon,
                          // color: theme.primaryColor,
                        ),
                        title: Text(
                          TopButtonModel.list[e.key].name,
                          // style: AppText.l1,
                        ),
                      ),
                    ),
                  ),
                ),
            Space.y(5.w)!,
            ColorChageButton(
              text: 'RESUME',
              onTap: () {
                StaticData.openURL(StringTheme.resume);
              },
            ),
          ],
        ),
      ),
    ));
  }
}

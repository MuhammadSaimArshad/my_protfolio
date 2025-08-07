import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../Apptheme.dart';
import '../controller/scrolling_controller.dart';
import '../model/top_button_model.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: AppTheme.nameLogo(context)),
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                visualDensity: VisualDensity(
                    horizontal: -2, vertical: -2), // makes everything tighter
                leading: Icon(
                  Get.isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode,
                ),
                title: Text(Get.isDarkMode ? "Light Mode" : "Dark Mode"),
                trailing: Transform.scale(
                  scale: 0.75, // 👈 reduce size of the switch
                  child: Switch(
                    value: Get.isDarkMode,
                    activeColor: theme.primaryColor,
                    inactiveTrackColor: Colors.grey,
                    onChanged: (newValue) {
                      if (Get.isDarkMode) {
                        Get.changeTheme(ThemeColors.lightTheme);
                      } else {
                        Get.changeTheme(ThemeColors.darkTheme);
                      }
                      setState(() {});
                    },
                  ),
                ),
              ),
              ...TopButtonModel.list.asMap().entries.map<Widget>(
                    (MapEntry<int, TopButtonModel> e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor: theme.primaryColor.withAlpha(70),
                        onPressed: () {
                          Scroll_Controller.to.jumpTo(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            TopButtonModel.list[e.key].icon,
                          ),
                          title: Text(
                            TopButtonModel.list[e.key].name,
                          ),
                        ),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    ));
  }
}

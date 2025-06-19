import 'package:flutter/material.dart';

import '../Util/String.dart';
import '../staticdata.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Developed by "),
            InkWell(
              onTap: () => StaticData.openURL(StringTheme.gitHub),
              child: const Text(
                " Muhammad Saim Arshad💙",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(" © 21/04/2025"),
          ],
        ),
      ),
    );
  }
}

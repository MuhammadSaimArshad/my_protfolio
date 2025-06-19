import 'package:flutter/material.dart';
import 'package:my_protfolio/screen/Footer.dart';

import 'Contact.dart';
import 'home.dart';
import 'project.dart';
import 'services.dart';

class PagesList {
  static List<Widget> views = [
    const HomePage(),
    const Services(),
    const Projects(),
    const Contact(),
    const Footer(),
  ];
}

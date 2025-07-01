import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/Apptheme.dart';

import '../Util/responsive.dart';
import '../model/experience_model.dart';
import 'widgets/desktop_experience_card.dart';
import 'widgets/mobile_experirnce_card.dart';
import 'widgets/tablet_experience_card.dart';

class Experince extends StatefulWidget {
  const Experince({super.key});

  @override
  State<Experince> createState() => _ExperinceState();
}

class _ExperinceState extends State<Experince> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    const greenColor = Color(0xFF4EFFA5);
    const bgColor = Color(0xFF1D1E22);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 9.9),
      child: Responsive(
        desktop: Column(
          children: [
            Container(
              color: Theme.of(context).brightness == Brightness.dark
                  ? bgColor
                  : Colors.white,
              // color: bgColor,
              padding: const EdgeInsets.symmetric(vertical: 60),
              width: double.infinity,
              child: Column(
                children: [
                  // Heading
                  Text(
                    "Experience",
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Reflection of what I’ve been doing so far, so long.",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white70
                          : Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 50),
                  DesktopExperienceCard(
                    data: ExperienceModel(
                      company: "Green Professional Technologies (PVT) LTD",
                      role: "Flutter Developer",
                      duration: "Dec 2024 - Present",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components and to maintain API architecture",
                        "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                        "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Experience Card
                  DesktopExperienceCard(
                    data: ExperienceModel(
                      company: "7 Skies Solution",
                      role: "Flutter Developer",
                      duration: "Feb 2023 - Feb 2024",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components",
                        "Maintaining layered architecture for better encapsulation",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors (dev, qa, prod)",
                        "Integration of REST APIs, Firebase and caching",
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  // Experience Card
                  DesktopExperienceCard(
                    data: ExperienceModel(
                      company: "HiSkyTech",
                      role: "Flutter Developer",
                      duration: "Sep 2024 - Oct 2024",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components and to maintain API architecture",
                        "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                        "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  // Experience Card
                  DesktopExperienceCard(
                    data: ExperienceModel(
                      company: "IT SOLERA (PVT) LTD",
                      role: "Flutter Developer",
                      duration: "Oct 2024 - Nov 2024",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components and to maintain API architecture",
                        "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                        "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Experience Card
                ],
              ),
            )
          ],
        ),
        tablet: Column(
          children: [
            Container(
              color: Theme.of(context).brightness == Brightness.dark
                  ? bgColor
                  : Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 60),
              width: double.infinity,
              child: Column(
                children: [
                  // Heading
                  Text(
                    "Experience",
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Reflection of what I’ve been doing so far, so long.",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white70
                          : Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 50),
                  TabletExperienceCard(
                    data: ExperienceModel(
                      company: "Green Professional Technologies (PVT) LTD",
                      role: "Flutter Developer",
                      duration: "Dec 2024 - Present",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components and to maintain API architecture",
                        "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                        "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Experience Card
                  TabletExperienceCard(
                    data: ExperienceModel(
                      company: "7 Skies Solution",
                      role: "Flutter Developer",
                      duration: "Feb 2023 - Feb 2024",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components",
                        "Maintaining layered architecture for better encapsulation",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors (dev, qa, prod)",
                        "Integration of REST APIs, Firebase and caching",
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  // Experience Card
                  TabletExperienceCard(
                    data: ExperienceModel(
                      company: "HiSkyTech",
                      role: "Flutter Developer",
                      duration: "Sep 2024 - Oct 2024",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components and to maintain API architecture",
                        "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                        "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  // Experience Card
                  TabletExperienceCard(
                    data: ExperienceModel(
                      company: "IT SOLERA (PVT) LTD",
                      role: "Flutter Developer",
                      duration: "Oct 2024 - Nov 2024",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components and to maintain API architecture",
                        "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                        "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Experience Card
                  TabletExperienceCard(
                    data: ExperienceModel(
                      company: "Green Professional Technologies (PVT) LTD",
                      role: "Flutter Developer",
                      duration: "Dec 2024 - Present",
                      technologies: [
                        "Flutter",
                        "Dart",
                        "Firebase",
                        "REST APIs"
                      ],
                      responsibilities: [
                        "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                        "Integrated payment gateways into flutter app with REST APIs",
                        "Handled local packages to maintain custom components and to maintain API architecture",
                        "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                        "Learned GitHub actions for CI/CD",
                        "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                        "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        mobile: Column(children: [
          Container(
            color: Theme.of(context).brightness == Brightness.dark
                ? bgColor
                : Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 60),
            width: double.infinity,
            child: Column(
              children: [
                // Heading
                Text(
                  "Experience",
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Reflection of what I’ve been doing so far, so long.",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white70
                        : Colors.grey,
                  ),
                ),
                const SizedBox(height: 50),
                MobileExperienceCard(
                  data: ExperienceModel(
                    company: "Green Professional Technologies (PVT) LTD",
                    role: "Flutter Developer",
                    duration: "Dec 2024 - Present",
                    technologies: ["Flutter", "Dart", "Firebase", "REST APIs"],
                    responsibilities: [
                      "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                      "Integrated payment gateways into flutter app with REST APIs",
                      "Handled local packages to maintain custom components and to maintain API architecture",
                      "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                      "Learned GitHub actions for CI/CD",
                      "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                      "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Experience Card
                MobileExperienceCard(
                  data: ExperienceModel(
                    company: "7 Skies Solution",
                    role: "Flutter Developer",
                    duration: "Feb 2023 - Feb 2024",
                    technologies: ["Flutter", "Dart", "Firebase", "REST APIs"],
                    responsibilities: [
                      "Working with flutter_bloc state management, alongside provider",
                      "Integrated payment gateways into flutter app with REST APIs",
                      "Handled local packages to maintain custom components",
                      "Maintaining layered architecture for better encapsulation",
                      "Learned GitHub actions for CI/CD",
                      "Worked with various env. flavors (dev, qa, prod)",
                      "Integration of REST APIs, Firebase and caching",
                    ],
                  ),
                ),

                SizedBox(height: 20),
                // Experience Card
                MobileExperienceCard(
                  data: ExperienceModel(
                    company: "HiSkyTech",
                    role: "Flutter Developer",
                    duration: "Sep 2024 - Oct 2024",
                    technologies: ["Flutter", "Dart", "Firebase", "REST APIs"],
                    responsibilities: [
                      "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                      "Integrated payment gateways into flutter app with REST APIs",
                      "Handled local packages to maintain custom components and to maintain API architecture",
                      "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                      "Learned GitHub actions for CI/CD",
                      "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                      "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                    ],
                  ),
                ),

                SizedBox(height: 20),
                // Experience Card
                MobileExperienceCard(
                  data: ExperienceModel(
                    company: "IT SOLERA (PVT) LTD",
                    role: "Flutter Developer",
                    duration: "Oct 2024 - Nov 2024",
                    technologies: ["Flutter", "Dart", "Firebase", "REST APIs"],
                    responsibilities: [
                      "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                      "Integrated payment gateways into flutter app with REST APIs",
                      "Handled local packages to maintain custom components and to maintain API architecture",
                      "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                      "Learned GitHub actions for CI/CD",
                      "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                      "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Experience Card
                MobileExperienceCard(
                  data: ExperienceModel(
                    company: "Green Professional Technologies (PVT) LTD",
                    role: "Flutter Developer",
                    duration: "Dec 2024 - Present",
                    technologies: ["Flutter", "Dart", "Firebase", "REST APIs"],
                    responsibilities: [
                      "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                      "Integrated payment gateways into flutter app with REST APIs",
                      "Handled local packages to maintain custom components and to maintain API architecture",
                      "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                      "Learned GitHub actions for CI/CD",
                      "Worked with various env. flavors in flutter app (dev, qa, stage, prod)",
                      "Integration of REST APIs, Firebase and local cached concepts for better user experience",
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/Util/colorChangebuttom.dart';
import 'package:my_protfolio/screen/home.dart';
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

    return Container(
        padding: EdgeInsets.symmetric(horizontal: width / 9.9)
            .copyWith(bottom: height * 0.2),
        child: Responsive(
          desktop: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 👈 Left Column: Images
                  Expanded(
                    flex: 1,
                    child: Wrap(
                      spacing: 30,
                      runSpacing: 30,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              12), // 👈 set your desired radius
                          child: Image.asset('assets/imgs/imag1.jpeg',
                              width: 120, height: 150, fit: BoxFit.contain),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              12), // 👈 set your desired radius
                          child: Image.asset('assets/imgs/img 2.jpeg',
                              width: 250, height: 150, fit: BoxFit.cover),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              12), // 👈 set your desired radius
                          child: Image.asset('assets/imgs/imag 3.jpeg',
                              width: 250, height: 150, fit: BoxFit.cover),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              12), // 👈 set your desired radius
                          child: Image.asset('assets/imgs/imag 4.jpeg',
                              width: 120, height: 150, fit: BoxFit.contain),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              12), // 👈 set your desired radius
                          child: Image.asset('assets/imgs/imag 5.jpeg',
                              width: 290, height: 150, fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'About Me',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Hello Jee! My name is Saim ',
                          style: TextStyle(
                              fontSize: 38, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '"If you are not going to tell the world who you are,   the world is not going to tell you how good you are."',
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(height: 20),
                        // Gap(20),
                        const Text(
                          '''
I'm a dedicated Flutter Developer with over 2 years of experience crafting high-performance, visually appealing mobile apps for Android and iOS. With a background in Software Engineering, I specialize in cross-platform development using Flutter and Dart, ensuring smooth and scalable solutions for businesses and users alike.
              
My expertise spans UI/UX design implementation, state management (GetX, Provider), Firebase, and RESTful APIs, along with proficiency in Git, CI/CD, and app store deployment. I've worked on diverse apps, including e-commerce platforms, on-demand services, and real-time chat systems.
              
What drives me is building apps that offer value, look great, and work flawlessly. I focus on writing clean, maintainable code and collaborating effectively with design and backend teams to bring ideas to life.
              
Known for my adaptability, attention to detail, and user-focused mindset, I thrive in fast-paced environments and continuously stay updated with Flutter innovations.
              ''',
                          style: TextStyle(height: 1.6, fontSize: 15),
                        ),

                        ElevatedButton.icon(
                          onPressed: () {
                            downloadresume();
                          },
                          icon: Icon(
                            Icons.download,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Download Resume",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 19),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tech Stack',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Change is inevitable, so I keep on exploring new technology, learn\n'
                        'it in a minimal possible way and then build something out of it to\n'
                        'see how well I did :)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 30),
                      buildCategory("Mobile development", [
                        buildTechChip("Flutter", Icons.flutter_dash),
                        buildTechChip("Dart", Icons.code),
                      ]),
                      buildCategory("Web development", [
                        buildTechChip("HTML 5", Icons.language),
                        buildTechChip("CSS 3", Icons.style),
                        buildTechChip("Bootstrap", Icons.widgets),
                        buildTechChip("Javascript", Icons.javascript),
                      ]),
                      buildCategory("Server side", [
                        buildTechChip("Flask Restful", Icons.science),
                        buildTechChip("Node.js", Icons.memory),
                        buildTechChip("Express.js", Icons.merge_type),
                        buildTechChip("REST APIs", Icons.api),
                        buildTechChip("Dart Frog", Icons.bug_report),
                      ]),
                      buildCategory("Databases", [
                        buildTechChip("Firebase", Icons.cloud),
                        buildTechChip("MongoDB", Icons.storage),
                        buildTechChip("Postgres SQL", Icons.dataset_linked),
                      ]),
                      buildCategory("Version controlling & management", [
                        buildTechChip("GitHub", Icons.code_off),
                        buildTechChip("Jira", Icons.assignment_turned_in),
                        buildTechChip("Notion", Icons.note),
                      ]),
                      buildCategory("UI/UX Design", [
                        buildTechChip("Figma", Icons.design_services),
                        buildTechChip("Adobe XD", Icons.brush),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 190, left: 20),
                      child: Image.asset(
                        'assets/imgs/vector_phone.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          tablet: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 190,
                width: double.infinity,
                child: Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12), // 👈 set your desired radius
                      child: Image.asset('assets/imgs/imag1.jpeg',
                          width: 150, height: 150, fit: BoxFit.contain),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12), // 👈 set your desired radius
                      child: Image.asset('assets/imgs/img 2.jpeg',
                          width: 150, height: 150, fit: BoxFit.cover),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12), // 👈 set your desired radius
                      child: Image.asset('assets/imgs/imag 3.jpeg',
                          width: 90, height: 150, fit: BoxFit.cover),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12), // 👈 set your desired radius
                      child: Image.asset('assets/imgs/imag 4.jpeg',
                          width: 90, height: 150, fit: BoxFit.contain),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12), // 👈 set your desired radius
                      child: Image.asset('assets/imgs/imag 5.jpeg',
                          width: 90, height: 150, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 190,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'About Me',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Hello Jee! My name is Saim ',
                          style: TextStyle(
                              fontSize: 38, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '"If you are not going to tell the world who you are,   the world is not going to tell you how good you are."',
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(height: 20),
                        // Gap(20),
                        const Text(
                          '''
I'm a dedicated Flutter Developer with over 2 years of experience crafting high-performance, visually appealing mobile apps for Android and iOS. With a background in Software Engineering, I specialize in cross-platform development using Flutter and Dart, ensuring smooth and scalable solutions for businesses and users alike.
              
My expertise spans UI/UX design implementation, state management (GetX, Provider), Firebase, and RESTful APIs, along with proficiency in Git, CI/CD, and app store deployment. I've worked on diverse apps, including e-commerce platforms, on-demand services, and real-time chat systems.
              
What drives me is building apps that offer value, look great, and work flawlessly. I focus on writing clean, maintainable code and collaborating effectively with design and backend teams to bring ideas to life.
              
Known for my adaptability, attention to detail, and user-focused mindset, I thrive in fast-paced environments and continuously stay updated with Flutter innovations.
              ''',
                          style: TextStyle(height: 1.6, fontSize: 15),
                        ),

                        ElevatedButton.icon(
                          onPressed: () {
                            downloadresume();
                          },
                          icon: Icon(
                            Icons.download,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Download Resume",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 19),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tech Stack',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Change is inevitable, so I keep on exploring new technology, learn\n'
                          'it in a minimal possible way and then build something out of it to\n'
                          'see how well I did :)',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 30),
                        buildCategory("Mobile development", [
                          buildTechChip("Flutter", Icons.flutter_dash),
                          buildTechChip("Dart", Icons.code),
                        ]),
                        buildCategory("Web development", [
                          buildTechChip("HTML 5", Icons.language),
                          buildTechChip("CSS 3", Icons.style),
                          buildTechChip("Javascript", Icons.javascript),
                        ]),
                        buildCategory("Server side", [
                          buildTechChip("Node.js", Icons.memory),
                          buildTechChip("REST APIs", Icons.api),
                        ]),
                        buildCategory("Databases", [
                          buildTechChip("Firebase", Icons.cloud),
                          buildTechChip("MongoDB", Icons.storage),
                        ]),
                        buildCategory("Version controlling & management", [
                          buildTechChip("GitHub", Icons.code_off),
                          buildTechChip("Jira", Icons.assignment_turned_in),
                        ]),
                        buildCategory("UI/UX Design", [
                          buildTechChip("Figma", Icons.design_services),
                          buildTechChip("Adobe XD", Icons.brush),
                        ]),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/imgs/vector_phone.png',
                                fit: BoxFit.contain,
                                width: 300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          mobile: Column(children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 190,
              width: double.infinity,
              child: Wrap(
                spacing: 30,
                runSpacing: 30,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(12), // 👈 set your desired radius
                    child: Image.asset('assets/imgs/imag1.jpeg',
                        width: 150, height: 150, fit: BoxFit.contain),
                  ),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(12), // 👈 set your desired radius
                    child: Image.asset('assets/imgs/img 2.jpeg',
                        width: 150, height: 150, fit: BoxFit.cover),
                  ),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(12), // 👈 set your desired radius
                    child: Image.asset('assets/imgs/imag 3.jpeg',
                        width: 90, height: 150, fit: BoxFit.cover),
                  ),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(12), // 👈 set your desired radius
                    child: Image.asset('assets/imgs/imag 4.jpeg',
                        width: 90, height: 150, fit: BoxFit.contain),
                  ),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(12), // 👈 set your desired radius
                    child: Image.asset('assets/imgs/imag 5.jpeg',
                        width: 90, height: 150, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 190,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'About Me',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Hello Jee! My name is Saim ',
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '"If you are not going to tell the world who you are,   the world is not going to tell you how good you are."',
                        style: TextStyle(
                            color: Colors.grey, fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(height: 20),
                      // Gap(20),
                      const Text(
                        '''
I'm a dedicated Flutter Developer with over 2 years of experience crafting high-performance, visually appealing mobile apps for Android and iOS. With a background in Software Engineering, I specialize in cross-platform development using Flutter and Dart, ensuring smooth and scalable solutions for businesses and users alike.
              
My expertise spans UI/UX design implementation, state management (GetX, Provider), Firebase, and RESTful APIs, along with proficiency in Git, CI/CD, and app store deployment. I've worked on diverse apps, including e-commerce platforms, on-demand services, and real-time chat systems.
              
What drives me is building apps that offer value, look great, and work flawlessly. I focus on writing clean, maintainable code and collaborating effectively with design and backend teams to bring ideas to life.
              
Known for my adaptability, attention to detail, and user-focused mindset, I thrive in fast-paced environments and continuously stay updated with Flutter innovations.
              ''',
                        style: TextStyle(height: 1.6, fontSize: 15),
                      ),

                      ElevatedButton.icon(
                        onPressed: () {
                          downloadresume();
                        },
                        icon: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Download Resume",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 19),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 2,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            // 👈 Left Column: Images
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tech Stack',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Change is inevitable, so I keep on exploring new\ntechnology, learn'
                          'it in a minimal possible way\nand then build something out of it to\n'
                          'see how well I did :)',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 30),
                        buildCategory("Mobile development", [
                          buildTechChip("Flutter", Icons.flutter_dash),
                          buildTechChip("Dart", Icons.code),
                        ]),
                        buildCategory("Web development", [
                          buildTechChip("HTML 5", Icons.language),
                          buildTechChip("CSS 3", Icons.style),
                          buildTechChip("Javascript", Icons.javascript),
                        ]),
                        buildCategory("Server side", [
                          buildTechChip("Node.js", Icons.memory),
                          buildTechChip("REST APIs", Icons.api),
                        ]),
                        buildCategory("Databases", [
                          buildTechChip("Firebase", Icons.cloud),
                          buildTechChip("MongoDB", Icons.storage),
                        ]),
                        buildCategory("Version controlling & management", [
                          buildTechChip("GitHub", Icons.code_off),
                          buildTechChip("Jira", Icons.assignment_turned_in),
                        ]),
                        buildCategory("UI/UX Design", [
                          buildTechChip("Figma", Icons.design_services),
                          buildTechChip("Adobe XD", Icons.brush),
                        ]),
                        const SizedBox(height: 30),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'assets/imgs/vector_phone.png',
                            width: 300,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])
          ]),
        ));
  }

  Widget buildCategory(String title, List<Widget> chips) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey[400], fontSize: 14),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 12,
            runSpacing: 8,
            children: chips,
          ),
        ],
      ),
    );
  }

  Widget buildTechChip(String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: Colors.black),
          const SizedBox(width: 6),
          Text(label, style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}

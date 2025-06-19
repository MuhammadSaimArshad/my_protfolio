class ServicesModel {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesModel(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
  static List<ServicesModel> servicesUtils = [
    ServicesModel(
      name: 'Mobile Development',
      icon: 'assets/imgs/development.png',
      description:
          "Are you interested in the great Mobile app? Let's make it a reality.",
      tool: ['FLUTTER', 'DART'],
    ),
    ServicesModel(
      name: 'Web Development',
      icon: 'assets/icons/website.png',
      description:
          "Do you have an idea for your next great website? Let's make it a reality.",
      tool: [
        'HTML',
        'CSS',
      ],
    ),
    ServicesModel(
      name: 'Server Side',
      icon: 'assets/icons/database.png',
      description:
          "Experienced in integrating and consuming REST APIs for seamless data exchange and dynamic app functionality.",
      tool: [
        'REST APIs',
      ],
    ),
    ServicesModel(
      name: 'Database',
      icon: 'assets/icons/server.png',
      description:
          "Experienced in using Firebase for real-time databases and authentication, and MySQL for structured data management and backend integration",
      tool: ['FIREBASE', 'MYSQL'],
    ),
    ServicesModel(
      name: 'Version Control',
      icon: 'assets/icons/version-control.png',
      description:
          "Skilled in version control using Git and collaboration through GitHub for efficient code management and teamwork.",
      tool: ['GIT', "GITHUB"],
    ),
    ServicesModel(
      name: 'UI/UX Design',
      icon: 'assets/icons/graphic.png',
      description:
          "Skilled in using Flutter for UI development and Figma for designing pixel-perfect app interfaces ",
      tool: [
        'Adobe XD',
        'Figma',
      ],
    ),
  ];
}

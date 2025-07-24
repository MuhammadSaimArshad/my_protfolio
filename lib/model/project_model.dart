class ProjectModel {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectModel({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
  static List<ProjectModel> projectmodel = [
    ProjectModel(
      banners: 'assets/imgs/superlaw.jpeg',
      icons: 'assets/imgs/flutter.png',
      titles: 'SLD Application',
      description:
          'This app Fully functional using flutter, source code is also available, check below.',
      links: 'https://github.com/MuhammadSaimArshad',
    ),
    ProjectModel(
      banners: 'assets/imgs/onlinedoctorapp.png',
      icons: 'assets/imgs/flutter.png',
      titles: ' Online Doctor Appointment App',
      description:
          'This app Fully functional using flutter, source code is also available, check below.',
      links: 'https://github.com/MuhammadSaimArshad',
    ),
    ProjectModel(
      banners: 'assets/imgs/parcel.png',
      icons: 'assets/imgs/flutter.png',
      titles: 'Online Parcel Track App',
      description:
          'This app Fully functional using flutter, source code is also available, check below.',
      links: 'https://github.com/MuhammadSaimArshad',
    ),
    ProjectModel(
      banners: 'assets/imgs/dating.png',
      icons: 'assets/imgs/flutter.png',
      titles: 'Dating App UI',
      description:
          'This app Fully functional using flutter, source code is also available, check below.',
      links: 'https://github.com/MuhammadSaimArshad',
    ),
    ProjectModel(
      banners: 'assets/imgs/jobboard.png',
      icons: 'assets/imgs/flutter.png',
      titles: 'Job Board App',
      description:
          'This app Fully functional using flutter, source code is also available, check below.',
      links: 'https://github.com/MuhammadSaimArshad',
    ),
    ProjectModel(
      banners: 'assets/imgs/newsapp.png',
      icons: 'assets/imgs/flutter.png',
      titles: 'News Media',
      description:
          'This app Fully functional using flutter, source code is also available, check below.',
      links: 'https://github.com/MuhammadSaimArshad',
    ),
  ];
}

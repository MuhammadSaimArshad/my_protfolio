import '../Util/String.dart';

class ContactModel {
  final String url;
  final String icon;

  ContactModel({required this.url, required this.icon});
  static List<ContactModel> contactModel = [
    ContactModel(
        url: StringTheme.gitHub,
        icon: "https://img.icons8.com/ios-glyphs/60/000000/github.png"),
    ContactModel(
        url: StringTheme.fiverr,
        icon: "https://img.icons8.com/ios-filled/50/000000/fiverr.png"),
    ContactModel(
        url: StringTheme.facebook,
        icon: "https://img.icons8.com/ios-filled/50/000000/facebook-new.png"),
    // ContactModel(
    //     url: StringTheme.youtube,
    //     icon: "https://img.icons8.com/ios-filled/50/000000/youtube-play.png"),
    ContactModel(
        url: StringTheme.whatsapp,
        icon:
            "https://img.icons8.com/material-outlined/48/000000/whatsapp.png"),
    // ContactModel(
    //     url: StringTheme.twitter,
    //     icon: "https://img.icons8.com/fluency/48/000000/twitter.png"),
    ContactModel(
        url: StringTheme.linkedin,
        icon: "https://img.icons8.com/ios-filled/50/000000/linkedin.png"),
    ContactModel(
        url: StringTheme.upwork,
        icon: "https://img.icons8.com/ios-filled/50/000000/upwork.png"),
    ContactModel(
        url: StringTheme.instagram,
        icon: "https://img.icons8.com/glyph-neue/64/000000/instagram-new.png"),
  ];
}


// 


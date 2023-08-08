import 'package:flutter/material.dart';

class Config {
  static const appName = 'Riyadh Indonesia';
  static const supportEmail = 'info@siln-riyadh.kemdikbud.go.id/';
  static const privacyPolicyUrl =
      'https://siln-riyadh.kemdikbud.go.id/privacy-policy-2/';
  static const iOSAppID = '1602317417';

  //SOCIAL LINKS
  static const String facebookPageUrl =
      'https://web.facebook.com/Riyadh-Indonesia';
  static const String youtubeChannelUrl =
      'https://www.youtube.com/channel/Riyadh-indonesia';
  static const String twitterUrl =
      'https://twitter.com/Riyadh-indonesia';

  //app theme color
  final Color appThemeColor = Color(0xff024495);
  final Color sdThemeColor = Color(0xFFf44336);
  final Color smpThemeColor = Color(0xFF0b5394);

  // Icons
  static const String appIcon = 'assets/images/riyadh.png';
  static const String logo = 'assets/images/riyadh.png';
  static const String splash = 'assets/images/riyadh.png';

  //languages
  static const List<String> languages = [
    'Indonesia',
    'English',
    'Spanish',
    'Arabic'
  ];

  //Image Assets
  static const String commentImage = "assets/images/comment.svg";
  static const String bookmarkImage = "assets/images/bookmark.svg";
  static const String notificationImage = "assets/images/notification.svg";
  static const String noContentImage = "assets/images/no_content.svg";

  //animation files
  static const String doneAnimation = 'assets/animation_files/done.flr';
  static const String searchAnimation = 'assets/animation_files/search.flr';
}

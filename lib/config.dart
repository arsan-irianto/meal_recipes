import 'package:flutter/material.dart';

enum Flavor {
  DEV,
  PRO
}

class Config {
  static Flavor appFlavor;

  static String get appString {
    switch(appFlavor) {
      case Flavor.DEV:
        return 'DEVELOPMENT';
        break;
      case Flavor.PRO:
        return 'PRODUCTION';
        break;
      default:
        return 'MAIN';
        break;
    }
  }

  static Color get appColor {
    switch(appFlavor) {
      case Flavor.DEV:
        return Colors.pinkAccent;
        break;
      case Flavor.PRO:
        return Colors.orangeAccent;
        break;
      default:
        return Colors.blueAccent;
        break;
    }
  }

  static Icon get appIcon {
    switch(appFlavor) {
      case Flavor.DEV:
        return Icon(Icons.developer_mode);
        break;
      case Flavor.PRO:
        return Icon(Icons.new_releases);
        break;
      default:
        return Icon(Icons.android);
        break;
    }
  }
}
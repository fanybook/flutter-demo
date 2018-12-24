import 'package:flutter/material.dart';

// import 'package:gutfan/pages/bootstrap_page.dart';
import 'package:gutfan/pages/home/home_page.dart';
import 'package:gutfan/pages/drawer/view_history.dart';
import 'package:gutfan/pages/drawer/offline_cache.dart';
import 'package:gutfan/pages/drawer/favorites.dart';
import 'package:gutfan/pages/drawer/followings.dart';
import 'package:gutfan/pages/drawer/contribute.dart';
import 'package:gutfan/pages/drawer/contact_css.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      // '/': (BuildContext context) => BootstrapPage(), // 有'/'会报错
      '/home_page': (BuildContext context) => HomePage(),
      // 抽屉
      '/drawer_view_history': (BuildContext context) => ViewHistory(),
      '/drawer_offline_cache': (BuildContext context) => OfflineCache(),
      '/drawer_favorites': (BuildContext context) => Favorites(),
      '/drawer_followings': (BuildContext context) => Followings(),
      '/drawer_contribute': (BuildContext context) => Contribute(),
      '/drawer_contact_css': (BuildContext context) => ContactCss(),
    };
  }
}
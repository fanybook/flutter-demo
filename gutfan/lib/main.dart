import 'package:flutter/material.dart';

import 'package:gutfan/config/routes.dart';
import 'package:gutfan/config/theme.dart';
import 'package:gutfan/pages/home/home_page.dart';

void main() => runApp(GutfanApp());

class GutfanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '橡胶.D.霸气',
      theme: ThemeData.light().copyWith(
        primaryColor: ThemeColors.primaryColor,
      ),
      home: HomePage(),
      routes: Routes.getRoutes(),
    );
  }
}

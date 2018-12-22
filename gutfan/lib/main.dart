import 'package:flutter/material.dart';
import './pages/home/home_page.dart';
import './config/theme.dart';

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
    );
  }
}

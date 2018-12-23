import 'package:flutter/material.dart';

import 'package:gutfan/components/drawer.dart';

class Followings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('我的收藏')),
      drawer: DrawerView(
        current: 'followings',
      ),
    );
  }
}
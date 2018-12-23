import 'package:flutter/material.dart';

import 'package:gutfan/components/drawer.dart';

class ViewHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('历史记录')),
      drawer: DrawerView(
        current: 'view_history',
      ),
    );
  }
}
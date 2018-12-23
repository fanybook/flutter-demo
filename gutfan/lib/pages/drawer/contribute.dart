import 'package:flutter/material.dart';

import 'package:gutfan/components/drawer.dart';

class Contribute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('投稿')),
      drawer: DrawerView(
        current: 'contribute',
      ),
    );
  }
}
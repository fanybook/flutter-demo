import 'package:flutter/material.dart';

import 'package:gutfan/components/drawer.dart';

class OfflineCache extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('离线缓存')),
      drawer: DrawerView(
        current: 'offline_cache',
      ),
    );
  }
}
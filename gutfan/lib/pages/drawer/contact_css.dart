import 'package:flutter/material.dart';

import 'package:gutfan/components/drawer.dart';

class ContactCss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('联系客服')),
      drawer: DrawerView(
        current: 'contact_css',
      ),
    );
  }
}
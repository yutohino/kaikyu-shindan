// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NameAndResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('診断結果'),
      ),
    );
  }
}

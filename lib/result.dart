// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(this.resultPoints);

  final int resultPoints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('診断結果'),
      ),
      body: Container(
        child: Center(
          child: Text(resultPoints.toString()),
        ),
      ),
    );
  }
}

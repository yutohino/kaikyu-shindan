// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('階級診断')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'あなたの階級は!?',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // TODO: 3択質問の画面に遷移
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10)),
              child: Text(
                'スタート',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

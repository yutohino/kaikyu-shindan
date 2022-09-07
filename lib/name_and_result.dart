// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NameAndResult extends StatelessWidget {
  NameAndResult(this.name, this.kaikyu, this.kaikyuImageUrl);

  final String name;
  final String kaikyu;
  final String kaikyuImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('診断終了'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 32),
                children: <TextSpan>[
                  TextSpan(
                      text: name,
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(text: ' は、\n'),
                  TextSpan(
                      text: kaikyu,
                      style: TextStyle(
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                          fontSize: 40)),
                  TextSpan(text: ' でした!!!'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Image.asset(kaikyuImageUrl),
            SizedBox(height: 10),
            Text(
              'スクショしてみんなに自慢しよう!!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/home', (route) => false);
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10)),
              child: Text(
                '最初に戻る',
                style: TextStyle(
                  fontSize: 24,
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

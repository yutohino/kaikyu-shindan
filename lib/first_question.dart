// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kaikyu_shindan/second_question.dart';

class FirstQuestion extends StatelessWidget {
  // TODO: 診断途中で、他の思いアプリをたくさん起動して戻った時どうなる？（ポイントとか）

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('第1問'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('あなたは何者?',
                  style: TextStyle(fontSize: 24, color: Colors.black87)),
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // ノンケ:1pt
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondQuestion(1)));
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50.0),
                      side: BorderSide(
                        color: Colors.red, //枠線の色
                        width: 1.5,
                      ),
                    ),
                    child: Text('ノンケ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      // ホモ:2pt
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondQuestion(2)));
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50.0),
                      side: BorderSide(
                        color: Colors.red, //枠線の色
                        width: 1.5,
                      ),
                    ),
                    child: Text('ホモ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      // バイ:3pt
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondQuestion(3)));
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50.0),
                      side: BorderSide(
                        color: Colors.red, //枠線の色
                        width: 1.5,
                      ),
                    ),
                    child: Text('バイ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

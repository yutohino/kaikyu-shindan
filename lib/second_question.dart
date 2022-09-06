// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:kaikyu_shindan/result.dart';

class SecondQuestion extends StatelessWidget {
  SecondQuestion(this.previousPoints);

  final int previousPoints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('第2問'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('あなたの恋人の誕生日です。\nあなたは何をプレゼントしますか?',
                  style: TextStyle(fontSize: 24, color: Colors.black87)),
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // 食いかけのガム:1pt
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Result(calculatePoints(1))));
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50.0),
                      side: BorderSide(
                        color: Colors.red, //枠線の色
                        width: 1.5,
                      ),
                    ),
                    child: Text('食いかけのガム',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      // 拾った輪ゴム:2pt
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Result(calculatePoints(2))));
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50.0),
                      side: BorderSide(
                        color: Colors.red, //枠線の色
                        width: 1.5,
                      ),
                    ),
                    child: Text('拾った輪ゴム',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      // 爪切り800個:3pt
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Result(calculatePoints(3))));
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50.0),
                      side: BorderSide(
                        color: Colors.red, //枠線の色
                        width: 1.5,
                      ),
                    ),
                    child: Text('爪切り800個',
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

  /// 第1問と第2問のポイントの合計値を計算して返す。
  /// [selectedPoints]は第2問で選択した選択肢のポイント。
  int calculatePoints(int selectedPoints) {
    return previousPoints + selectedPoints;
  }
}

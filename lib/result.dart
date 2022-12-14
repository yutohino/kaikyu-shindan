// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:kaikyu_shindan/name_and_result.dart';

class Result extends StatelessWidget {
  Result(this.pointsResult);

  final int pointsResult;

  final String shosa = '少佐';
  final String taisho = '大将';
  final String daimyo = '大名';
  final String goketsu = '豪傑';
  final String gunshin = '軍神';

  final myController = TextEditingController();

  /// 合計点数から診断結果(階級)を取得する
  /// [points]は合計点数
  String getKaikyuResult(int points) {
    String kaikyuResult = '';
    switch (points) {
      case 1:
      case 2:
        kaikyuResult = shosa;
        break;
      case 3:
        kaikyuResult = taisho;
        break;
      case 4:
        kaikyuResult = daimyo;
        break;
      case 5:
        kaikyuResult = goketsu;
        break;
      case 6:
        kaikyuResult = gunshin;
        break;
    }
    return kaikyuResult;
  }

  /// imagesディレクトリの画像URLを階級に応じて取得する
  /// [points]は合計点数
  String getKaikyuImageURL(int points) {
    String kaikyuName = '';
    switch (points) {
      case 1:
      case 2:
        kaikyuName = 'shosa';
        break;
      case 3:
        kaikyuName = 'taisho';
        break;
      case 4:
        kaikyuName = 'daimyo';
        break;
      case 5:
        kaikyuName = 'goketsu';
        break;
      case 6:
        kaikyuName = 'gunshin';
        break;
    }
    return 'images/badge_$kaikyuName.png';
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('診断結果'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black87, fontSize: 32),
                  children: <TextSpan>[
                    TextSpan(text: 'あなたは '),
                    TextSpan(
                        text: getKaikyuResult(pointsResult),
                        style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                            fontSize: 40)),
                    TextSpan(text: ' です!!!'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Image.asset(getKaikyuImageURL(pointsResult)),
              SizedBox(height: 10),
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: myController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: '名前を入力しよう!!',
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '名前を入力してね!!';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NameAndResult(
                                myController.text,
                                getKaikyuResult(pointsResult),
                                getKaikyuImageURL(pointsResult))));
                  }
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10)),
                child: Text(
                  '名前を入力完了',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

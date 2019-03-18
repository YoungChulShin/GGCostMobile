import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ggcost_mobile/pages/costs/CostMainPage.dart';

void main() {
  // UI 회전 방지
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
    .then((_) {
      // 프로그램 실행
      runApp(MyApp());
    });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '공감 가계부',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFFFFBB00),
        accentColor: Colors.blue,
      ),
      home: CostMainPage()
    );
  }
}
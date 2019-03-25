import 'package:flutter/material.dart';
import 'package:ggcost_mobile/resources/GGColor.dart';
import 'package:ggcost_mobile/resources/GGFont.dart';


class AddExpensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('지출 등록', 
          style: TextStyle(color: GGColor.appBarHeaderTitle, fontSize: GGFontSize.fontSizeRegular,fontWeight: FontWeight.bold)
        ),
        leading: Container(),
        centerTitle: true,
        backgroundColor: GGColor.mainBackground,
        elevation: 0.0,
      ),
      body: Text('Test'),
    );
  }
}
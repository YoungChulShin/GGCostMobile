import 'package:flutter/material.dart';
import 'package:ggcost_mobile/resources/GGColor.dart';
import 'package:ggcost_mobile/resources/GGFont.dart';


class AddIncomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('수입 등록', 
          style: TextStyle(color: GGColor.appBarHeaderTitle, fontSize: GGFontSize.fontSizeRegular,fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
        backgroundColor: GGColor.mainBackground,
        elevation: 0.0,
      ),
      body: Text('Test'),
    );
  }
}
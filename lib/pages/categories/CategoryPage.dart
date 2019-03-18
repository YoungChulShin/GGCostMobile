import 'package:flutter/material.dart';
import 'package:ggcost_mobile/resources/GGColor.dart';
import 'package:ggcost_mobile/resources/GGFont.dart';

class CategoryPage extends StatefulWidget {
  @override 
  _CategoryPageState createState() =>  _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카테고리 관리', 
          style: TextStyle(color: Colors.black, fontSize: GGFontSize.fontSizeRegular,fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: (){},
          )
        ],
        elevation: 0.0,
      ),
    );
  }
}
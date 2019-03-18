import 'package:flutter/material.dart';
import 'package:ggcost_mobile/resources/GGColor.dart';
import 'package:ggcost_mobile/resources/GGFont.dart';
import 'package:ggcost_mobile/pages/settings/SettingPage.dart';
import 'package:ggcost_mobile/pages/categories/CategoryPage.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: GGColor.mainColorYellow
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 5,
                  height: 30,
                  decoration: BoxDecoration(
                    color: GGColor.mainColorBlue
                  ),
                ),
                SizedBox(width: 10.0),
                Text('공감가계부', style: TextStyle(fontFamily: GGFontFamily.fontBMJua, fontSize: GGFontSize.fontSizeLarge
                  ),
                ),
              ],
            ),
          ),
          // 메뉴 - 통계 보기
          InkWell(
            onTap: () {

            },
            child: ListTile(
              title: Text('통계 보기', style: TextStyle(fontSize: GGFontSize.fontSizeRegular),),
              leading: Icon(Icons.multiline_chart),
            ),
          ),
          //메뉴 - 카테고리
          InkWell(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => CategoryPage()));
            },
            child: ListTile(
              title: Text('카테고리 관리', style: TextStyle(fontSize: GGFontSize.fontSizeRegular),),
              leading: Icon(Icons.category),
            ),
          ),
          //메뉴 - 설정
          InkWell(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => SettingPage()));
            },
            child: ListTile(
              title: Text('설정', style: TextStyle(fontSize: GGFontSize.fontSizeRegular),),
              leading: Icon(Icons.settings),
            ),
          ),
          // 메뉴 - 사용방법
          InkWell(
            onTap: () {

            },
            child: ListTile(
              title: Text('사용방법', style: TextStyle(fontSize: GGFontSize.fontSizeRegular),),
              leading: Icon(Icons.help),
            ),
          ),
        ],
      ),
    );
  }
}
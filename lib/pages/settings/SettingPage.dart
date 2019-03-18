import 'package:flutter/material.dart';
import 'package:ggcost_mobile/datamodels/EnumModels.dart';
import 'package:ggcost_mobile/resources/GGColor.dart';
import 'package:ggcost_mobile/resources/GGFont.dart';
import 'package:ggcost_mobile/pages/settings/EventSettingPage.dart';
import 'package:ggcost_mobile/pages/settings/SettingDialog.dart';

class SettingPage extends StatelessWidget {

  TextStyle settingTitleStyle(){
    return TextStyle(
      color: GGColor.mainColorYellow,
      fontWeight: FontWeight.bold,
      fontSize: GGFontSize.fontSizeRegular, 
    );
  }

  TextStyle settingSubStyle(){
    return TextStyle(
      color: GGColor.appBarHeaderTitle,
      fontSize: GGFontSize.fontSizeRegular, 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: Text('설정', 
          style: TextStyle(color: GGColor.appBarHeaderTitle, fontSize: GGFontSize.fontSizeRegular,fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
        backgroundColor: GGColor.mainBackground,
        elevation: 0.0,
      ),
      // Body
      body: Container(
        color: GGColor.mainBackground,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*
              // 메뉴 - 항목 관리
              Text('항목 관리', style: settingTitleStyle()),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    // 서브 메뉴 - 이벤트 관리
                    InkWell(
                      child: Text('이벤트 관리', style: settingSubStyle()),
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => EventSettingPage()
                          ));
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              // 메뉴 - 화면 표시
              Text('화면 표시', style: settingTitleStyle()),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    // 서브 메뉴 - 언어
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('언어', style: settingSubStyle()),
                          Container(
                            width: 120,
                            child: Text('한국어', style: settingSubStyle()),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => EventSettingPage()
                          )
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    // 서브 메뉴 - 통화
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('통화', style: settingSubStyle()),
                          Container(
                            width: 120,
                            child: Text('KRW', style: settingSubStyle()),
                          )
                        ],
                      ),
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              */
              // 메뉴 - 화면 표시
              Text('데이터 관리', style: settingTitleStyle()),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    // 서브 메뉴 - 데이터 백업
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('구글 드라이브 백업', style: settingSubStyle()),
                          Container(
                            width: 120,
                            child: Text('백업', style: settingSubStyle()),
                          )
                        ],
                      ),
                      /*
                      onTap: () async {
                        DataBackupModels backModel = await languageSelectionDialog(context);
                        print(backModel);
                      },
                      */
                      onTap: (){},
                    ),
                    SizedBox(height: 20),
                    // 서브 메뉴 - 데이터 동기화
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('구글 드라이브 동기화', style: settingSubStyle()),
                          Container(
                            width: 120,
                            child: Text('동기화', style: settingSubStyle()),
                          )
                        ],
                      ),
                      /*
                      onTap: () async {
                        DataBackupModels backModel = await languageSelectionDialog(context);
                        print(backModel);
                      },
                      */
                      onTap: (){},
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              // 메뉴 앱 정보
              Text('앱 정보', style: settingTitleStyle()),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    // 서브 메뉴 - 버전
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('앱 버전', style: settingSubStyle()),
                          Container(
                            width: 120,
                            child: Text('0.01', style: settingSubStyle()),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


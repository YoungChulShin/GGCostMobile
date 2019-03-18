import 'package:flutter/material.dart';
import 'package:ggcost_mobile/resources/GGColor.dart';
import 'package:ggcost_mobile/resources/GGFont.dart';
import 'package:ggcost_mobile/pages/costs/MainMenu.dart';

class CostMainPage extends StatefulWidget {
  @override
  _CostMainPageState createState() => _CostMainPageState();
}

class _CostMainPageState extends State<CostMainPage> with SingleTickerProviderStateMixin {
  
  TabController tabController;

  @override 
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: Text('이용 내역', 
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

      // 사이드 메뉴
      drawer: MainMenu(),

      // 메인 콘텐츠
      body: Container(
        decoration: BoxDecoration(
          color: GGColor.mainBackground
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: ListView(
            children: <Widget>[
              // 탭 메뉴
              TabBar(
                controller: tabController,
                indicatorColor: GGColor.mainColorBlack,
                indicatorWeight: 5,
                labelColor: GGColor.mainColorBlack,
                unselectedLabelColor: GGColor.unselectedFont,
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text('일간', 
                      style: TextStyle(fontSize: GGFontSize.fontSizeRegular))
                  ),
                  Tab(
                    child: Text('주간', 
                      style: TextStyle(fontSize: GGFontSize.fontSizeRegular))
                  ),
                  Tab(
                    child: Text('월간',
                      style: TextStyle(fontSize: GGFontSize.fontSizeRegular))
                  ),
                  Tab(
                    child: Icon(Icons.calendar_today),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

      // 하단 수입/지출 버튼
      bottomNavigationBar: Row(
        children: <Widget>[
          // 수입 등록 버튼
          Container(
            color: GGColor.mainColorGrey,
            width: MediaQuery.of(context).size.width / 2,
            height: 40,
            child: MaterialButton(
              child: Text('수입 등록', 
                style: TextStyle(fontSize: GGFontSize.fontSizeLarge, fontWeight: FontWeight.bold, color: Colors.white)
              ),
              onPressed: (){},
            ),
          ),

          // 지출 등록 버튼
          Container(
            color: GGColor.mainColorYellow,
            width: MediaQuery.of(context).size.width / 2,
            height: 40,
            child: MaterialButton(
              child: Text('지출 등록', 
                style: TextStyle(fontSize: GGFontSize.fontSizeLarge, fontWeight: FontWeight.bold, color: Colors.white)
              ),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
} 
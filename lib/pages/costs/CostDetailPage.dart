import 'package:flutter/material.dart';
import 'package:ggcost_mobile/resources/GGColor.dart';
import 'package:ggcost_mobile/resources/GGFont.dart';
import 'package:ggcost_mobile/datamodels/EnumModels.dart';
import 'package:ggcost_mobile/pages/costs/CostItemListPage.dart';

class CostDetailPage extends StatefulWidget {

  final CostViewType costViewType;

  @override
  _CostDetailPageState createState() => _CostDetailPageState();

  CostDetailPage(this.costViewType);
}

class _CostDetailPageState extends State<CostDetailPage> {

  String getInquiryDurationString(CostViewType costViewType) {
    if (costViewType ==CostViewType.daily) {
      return '2019.03.19(월)';
    }
    else if (costViewType == CostViewType.weekly) {
      return '2019.03.19(월) ~ 2019.03.25(일)';
    }
    else if (costViewType == CostViewType.monthly) {
      return '2019.03';
    }
    else {
      return '';
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 5.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // 금액 정보 Widget
                  children: <Widget>[
                    // 날짜 뒤로 가기 버튼
                    IconButton(
                      icon: Icon(Icons.chevron_left),
                      iconSize: 30.0,
                      onPressed: () {

                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // 조회 기간
                        Text(getInquiryDurationString(widget.costViewType), style: TextStyle(fontWeight: FontWeight.bold, fontSize: GGFontSize.fontSizeMedium),),
                        SizedBox(height: 15.0),
                        // 총 비용
                        Row(
                          children: <Widget>[
                            Text('123,456,789', style: TextStyle(fontWeight: FontWeight.bold, fontSize: GGFontSize.fontSizeVeryLarge, color: GGColor.incomeFontColor),),
                            Text(' 원', style: TextStyle(fontWeight: FontWeight.bold, fontSize: GGFontSize.fontSizeVeryLarge),),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        // 수입 내역
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end, 
                          children: <Widget>[
                            Text('수입(4)', style: TextStyle(fontSize: GGFontSize.fontSizeRegular, color: GGColor.mainColorBlack)),
                            Container(
                              width: 150.0,
                              child: Text('394,839 원',
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: GGFontSize.fontSizeRegular, color: GGColor.mainColorBlack),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5.0),
                        // 지출 내역
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end, 
                          children: <Widget>[
                            Text('지출(4)', style: TextStyle(fontSize: GGFontSize.fontSizeRegular, color: GGColor.mainColorBlack)),
                            Container(
                              width: 150.0,
                              child: Text('443,443,434,839 원',
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: GGFontSize.fontSizeRegular, color: GGColor.mainColorBlack),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    // 날짜 앞으로 가기 버튼
                    //Icon(Icons.chevron_right),
                    IconButton(
                      icon: Icon(Icons.chevron_right),
                      iconSize: 30.0,
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0,),
          // 줄 분리
          Container(
            height: 3,
            decoration: BoxDecoration(
              color: GGColor.unselectedFont
            ),
          ),
          // 사용 내역
          Container(
            height: MediaQuery.of(context).size.height - 370,
            child: CostItemListPage(),
          )
        ],
      ),
    );
  }
}
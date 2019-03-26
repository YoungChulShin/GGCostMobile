import 'package:flutter/material.dart';
import 'package:ggcost_mobile/resources/GGColor.dart';
import 'package:ggcost_mobile/resources/GGFont.dart';
import 'package:ggcost_mobile/datamodels/EnumModels.dart';

class CostItemListPage extends StatefulWidget {
  @override
  _CostItemListPage createState() => _CostItemListPage();
}

class CostItem {
  final CostType costType;
  final DateTime costDate;
  final String costName;
  final String category;
  final String subCategory;
  final double costMoney;

  const CostItem(
    this.costType, 
    this.costDate, 
    this.costName, 
    this.category, 
    this.subCategory,
    this.costMoney);
}

class _CostItemListPage extends State<CostItemListPage> {

  List<CostItem> costItems = [
    CostItem(CostType.income, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
    CostItem(CostType.expense, DateTime.now(), '호식이 2마리 치킨', '식비', '저녁', 123456),
  ];

  @override 
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: costItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 80.0,
                child: Text('08/12(월)', 
                  style: TextStyle(fontSize: GGFontSize.fontSizeRegular, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(costItems[index].costName, 
                      style: TextStyle(fontSize: GGFontSize.fontSizeRegular)),
                    Text('${costItems[index].category} / ${costItems[index].subCategory}', 
                      style: TextStyle(fontSize: GGFontSize.fontSizeSmall, color: GGColor.mainColorGrey))
                  ],
                ),
              ),
              Text('${costItems[index].costMoney.toString()}원', 
                style: TextStyle(
                  fontSize: GGFontSize.fontSizeRegular, 
                  color: (costItems[index].costType == CostType.income) ? 
                    GGColor.incomeFontColor : 
                    GGColor.expenseFontColor))
            ],
          )
        );
      },
    );
  }
}
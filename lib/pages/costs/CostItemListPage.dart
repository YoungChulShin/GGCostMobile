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
    CostItem(CostType.income, DateTime.now(), '테스트1', '카테고리1', '부 카테고리1', 12.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),
    CostItem(CostType.income, DateTime.now(), '테스트2', '카테고리2', '부 카테고리2', 44.0),

  ];

  @override 
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: costItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(0),
          child: Text(costItems[index].costName),
        );
      },
    );
  }
}
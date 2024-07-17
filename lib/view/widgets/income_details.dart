import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/items_model.dart';
import 'items_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemsModel(
        color: Color(0xFF208BC7), title: 'Design service', presnt: '%40'),
    ItemsModel(
        color: Color(0xFF4DB7F2), title: 'Design product', presnt: '%25'),
    ItemsModel(
        color: Color(0xFF064060), title: 'Product royalti', presnt: '%20'),
    ItemsModel(color: Color(0xFFE2DECD), title: 'Other', presnt: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ItemsDetails(itemsModel: items[index]),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}

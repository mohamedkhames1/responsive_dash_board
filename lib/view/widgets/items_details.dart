import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/items_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key, required this.itemsModel});
  final ItemsModel itemsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: itemsModel.color),
      ),
      title: Text(
        itemsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemsModel.presnt,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

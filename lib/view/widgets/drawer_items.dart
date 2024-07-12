import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'active_and_inactive_drawer.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems(
      {super.key, required this.itemsModel, required this.isActive});

  final DrawerItemsModel itemsModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerIcon(
            itemsModel: itemsModel,
          )
        : InActiveDrawerIcon(itemsModel: itemsModel);
  }
}

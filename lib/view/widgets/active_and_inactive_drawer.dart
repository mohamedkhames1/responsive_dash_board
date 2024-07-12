import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/drawer_item_model.dart';
import '../../utils/app_styles.dart';

class InActiveDrawerIcon extends StatelessWidget {
  const InActiveDrawerIcon({
    super.key,
    required this.itemsModel,
  });

  final DrawerItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemsModel.image),
      title: Text(itemsModel.title),
      titleTextStyle: AppStyles.styleMedium16(context),
    );
  }
}

class ActiveDrawerIcon extends StatelessWidget {
  const ActiveDrawerIcon({
    super.key,
    required this.itemsModel,
  });

  final DrawerItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemsModel.image),
      title: Text(itemsModel.title),
      titleTextStyle: AppStyles.styleBold16(context),
      trailing: Container(
        width: 3.5,
        color: const Color(0xff4eb7f2),
      ),
    );
  }
}

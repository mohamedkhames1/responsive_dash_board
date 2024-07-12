import 'package:flutter/widgets.dart';

import '../../model/drawer_item_model.dart';
import '../../utils/app_images.dart';
import 'drawer_items.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemsModel> items = [
    const DrawerItemsModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemsModel(
        image: Assets.imagesMyTransctions, title: 'My Transactions'),
    const DrawerItemsModel(image: Assets.imagesStatistics, title: 'Statistics'),
    const DrawerItemsModel(
        image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    const DrawerItemsModel(
        image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if (isActive != index) {
                  setState(() {
                    isActive = index;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DrawerItems(
                  itemsModel: items[index],
                  isActive: isActive == index,
                ),
              ),
            ));
  }
}

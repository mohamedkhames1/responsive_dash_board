import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/view/widgets/active_and_inactive_drawer.dart';
import 'package:responsive_dash_board/view/widgets/user_info_list_title.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width * .7,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTitle(
              userModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Mohamed Khames',
                  subtitle: 'Mohamed@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerIcon(
                    itemsModel: DrawerItemsModel(
                        image: Assets.imagesSettings,
                        title: 'Settings System')),
                InActiveDrawerIcon(
                    itemsModel: DrawerItemsModel(
                        image: Assets.imagesLogout, title: 'Logout Account')),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

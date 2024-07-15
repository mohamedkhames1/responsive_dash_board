import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/view/widgets/user_info_list_title.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Mohamed Khames',
        subtitle: 'Mohamed@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Ahmed Khames',
        subtitle: 'Ahmed@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Omer Khames',
        subtitle: 'Omer@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTitle(
                    userModel: e,
                  ),
                ))
            .toList(),
      ),
    );
    //   return SizedBox(
    //     height: 80,
    //     child: ListView.builder(
    //       itemCount: items.length,
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (BuildContext context, int index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTitle(
    //             userModel: items[index],
    //           ),
    //         );
    //       },
    //     ),
    //   );
  }
}

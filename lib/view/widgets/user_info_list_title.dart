import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({
    super.key,
    required this.userModel,
  });
  final UserInfoModel userModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfffafafa),
      child: ListTile(
        leading: SvgPicture.asset(userModel.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            userModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            userModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}

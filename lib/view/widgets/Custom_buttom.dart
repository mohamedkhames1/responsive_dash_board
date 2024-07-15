import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.background, this.textColor});
  final Color? background, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: background ?? const Color(0xff4eb7f2),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: Text(
            'Send Mony',
            style:
                AppStyles.styleSemiBold18(context).copyWith(color: textColor),
          )),
    );
  }
}

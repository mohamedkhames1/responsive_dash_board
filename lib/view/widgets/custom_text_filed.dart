import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.styleRegular16(context),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          fillColor: const Color(0xfffafafa),
          filled: true,
          border: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: Color(0xfffafafa),
        ));
  }
}

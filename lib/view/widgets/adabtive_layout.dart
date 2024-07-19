import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tapletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tapletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < SizeConfig.tablet) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.desktop) {
        return tapletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}

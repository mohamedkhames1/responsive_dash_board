import 'package:flutter/material.dart';

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
      if (constraints.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 1200) {
        return tapletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}

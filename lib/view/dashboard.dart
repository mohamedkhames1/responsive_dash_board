import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/adabtive_layout.dart';

import 'widgets/dashbord_desktop_layout.dart';

class DashBordView extends StatelessWidget {
  const DashBordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdabtiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tapletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashBordLayoutDesktop()),
    );
  }
}

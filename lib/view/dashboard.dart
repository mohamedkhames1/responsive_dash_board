import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/adabtive_layout.dart';
import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/view/widgets/dashbord_layout.dart';

import 'widgets/dashbord_desktop_layout.dart';
import 'widgets/dashbord_tablet_layou.dart';

class DashBordView extends StatefulWidget {
  const DashBordView({super.key});

  @override
  State<DashBordView> createState() => _DashBordViewState();
}

class _DashBordViewState extends State<DashBordView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xfffafafa),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: const Color(0xfff7f9fa),
      drawer: const CustomDrawer(),
      body: AdabtiveLayout(
          mobileLayout: (context) => const DashbordMobileLayout(),
          tapletLayout: (context) => const DashbordDesktopLayout(),
          desktopLayout: (context) => const DashBordLayoutDesktop()),
    );
  }
}

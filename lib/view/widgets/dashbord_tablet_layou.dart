import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';
import 'dashbord_layout.dart';

class DashbordDesktopLayout extends StatelessWidget {
  const DashbordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: DashbordMobileLayout(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

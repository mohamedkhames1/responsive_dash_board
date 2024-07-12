import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';

class DashBordLayoutDesktop extends StatelessWidget {
  const DashBordLayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
      ],
    );
  }
}

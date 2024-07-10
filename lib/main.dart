import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/dashboard.dart';

void main() {
  runApp(const ResponsiveDashbord());
}

class ResponsiveDashbord extends StatelessWidget {
  const ResponsiveDashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBordView(),
    );
  }
}

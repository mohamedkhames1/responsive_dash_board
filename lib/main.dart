import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/dashboard.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const ResponsiveDashbord();
      }));
}

class ResponsiveDashbord extends StatelessWidget {
  const ResponsiveDashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: const DashBordView(),
    );
  }
}

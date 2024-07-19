import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetaildIncomeChart extends StatefulWidget {
  const DetaildIncomeChart({super.key});

  @override
  State<DetaildIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetaildIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            value: 40,
            radius: activeIndex == 0 ? 48 : 40,
            titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
            title: activeIndex == 0 ? 'Design service' : '40%',
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            color: const Color(0xff208bc7)),
        PieChartSectionData(
            value: 25,
            radius: activeIndex == 1 ? 48 : 40,
            titlePositionPercentageOffset: activeIndex == 1 ? 1.4 : null,
            title: activeIndex == 1 ? 'Design product' : '25%',
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
            color: const Color(0xff4EB7F2)),
        PieChartSectionData(
            value: 20,
            radius: activeIndex == 2 ? 48 : 40,
            titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            color: const Color(0xff064061)),
        PieChartSectionData(
            value: 22,
            radius: activeIndex == 3 ? 48 : 40,
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
            title: activeIndex == 3 ? 'Other' : '22%',
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            color: const Color(0xffE2DECD)),
      ],
    );
  }
}

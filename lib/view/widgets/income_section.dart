import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/view/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/view/widgets/income_details.dart';

import 'all_expenses_header.dart';
import 'income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(
            title: 'Income',
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(child: IncomeDetails())
            ],
          ))
        ],
      ),
    );
  }
}

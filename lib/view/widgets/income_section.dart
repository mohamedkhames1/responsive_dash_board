import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/view/widgets/custom_background_container.dart';
import 'all_expenses_header.dart';
import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(
            title: 'Income',
          ),
          SizedBox(
            height: 20,
          ),
          IncomeSectionBody()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_card_and_transction_history.dart';

class DashbordMobileLayout extends StatelessWidget {
  const DashbordMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransctionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}

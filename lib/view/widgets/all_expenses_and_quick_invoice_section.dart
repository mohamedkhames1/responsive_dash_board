import 'package:flutter/material.dart';

import 'all_expenese.dart';
import 'quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24,
        ),
        AllExpenses(),
        SizedBox(
          height: 16,
        ),
        QuickInvoice(),
      ],
    );
  }
}

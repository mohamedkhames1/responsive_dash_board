import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';
import 'all_expenses_and_quick_invoice_section.dart';

class DashBordLayoutDesktop extends StatelessWidget {
  const DashBordLayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection())
      ],
    );
  }
}

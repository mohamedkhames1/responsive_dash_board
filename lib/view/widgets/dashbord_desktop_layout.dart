import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/view/widgets/my_card_and_transction_history.dart';
import 'all_expenses_and_quick_invoice_section.dart';
import 'income_section.dart';

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
        Expanded(
          flex: 3,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: AllExpensesAndQuickInvoiceSection(),
                      )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24,
                        ),
                        MyCardsAndTransctionHistorySection(),
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(child: IncomeSection()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}

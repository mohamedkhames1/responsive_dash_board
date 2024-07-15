import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/view/widgets/latest_transaction.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 30),
          LatestTransation(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}

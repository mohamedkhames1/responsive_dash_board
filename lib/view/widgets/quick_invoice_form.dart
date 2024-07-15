import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/title_text_field.dart';

import 'Custom_buttom.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Custom Name', hintText: 'Type Custom Name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: 'Custom email', hintText: 'Type Custom email')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item Name', hintText: 'Type Custom Name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(title: 'Item Mount', hintText: 'USA')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                background: Colors.transparent,
                textColor: Color(0xff4eb7f2),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_item_header.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems(
      {super.key, required this.model, required this.isActive});

  final AllExpensesItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4eb7f2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: model.image,
            isActive: isActive,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            model.title,
            style: isActive
                ? AppStyles.styleMedium16(context).copyWith(color: Colors.white)
                : AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(model.date,
              style: isActive
                  ? AppStyles.styleRegular14(context)
                      .copyWith(color: const Color(0xfffafafa))
                  : AppStyles.styleRegular14(context)),
          const SizedBox(
            height: 16,
          ),
          Text(model.price,
              style: isActive
                  ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold24(context))
        ],
      ),
    );
  }
}

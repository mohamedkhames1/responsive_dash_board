import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_items.dart';

import '../../utils/app_images.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = [
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2024',
        price: r'$20,25'),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Icome',
        date: 'April 2024',
        price: r'$20,25'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20,25'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItems(
              model: items[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItems(
              model: items[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItems(
              model: items[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],

      // children: items
      //     .map((e) => Expanded(
      //           child: AllExpensesItems(
      //             model: e,
      //           ),
      //         ))
      //     .toList(),
      // children: items.asMap().entries.map((e) {
      //   if (e.key == 1) {
      //     return Expanded(
      //       child: GestureDetector(
      //         onTap: () {
      //           updateIndex(e.key);
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 12),
      //           child: AllExpensesItems(
      //             model: e.value,
      //             isActive: selectedIndex == e.key,
      //           ),
      //         ),
      //       ),
      //     );
      //   } else {
      //     return Expanded(
      //       child: GestureDetector(
      //         onTap: () {
      //           updateIndex(e.key);
      //         },
      //         child: AllExpensesItems(
      //           model: e.value,
      //           isActive: selectedIndex == e.key,
      //         ),
      //       ),
      //     );
      //   }
      // }).toList(),
    );
  }

  void updateIndex(int key) {
    setState(() {
      selectedIndex = key;
    });
  }
}

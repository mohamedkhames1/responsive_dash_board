import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/view/widgets/latest_transaction_list_view.dart';

class LatestTransation extends StatelessWidget {
  const LatestTransation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest transition',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransactionListView()
      ],
    );
  }
}

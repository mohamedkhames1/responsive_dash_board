import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.57079632679489661923,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xFF064061),
              ))
        ],
      ),
    );
  }
}

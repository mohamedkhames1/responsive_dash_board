import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/view/widgets/custom_dot_indecator.dart';

class DotsIndecators extends StatelessWidget {
  const DotsIndecators({super.key, required this.curntIndex});
  final int curntIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: CustomDotsIndecator(isActive: curntIndex == index),
              )),
    );
  }
}

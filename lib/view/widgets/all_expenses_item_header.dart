import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isActive});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive
                  ? Colors.white.withOpacity(.1)
                  : const Color(0xfffafafa)),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                isActive ? Colors.white : const Color(0xff4eb7f2),
                BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: isActive ? Colors.white : null,
        )
      ],
    );
  }
}

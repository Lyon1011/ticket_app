import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  const BigCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return isRight ? SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(decoration: BoxDecoration(
          color: AppStyles.bgColor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))
      )),
    ): SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(decoration: BoxDecoration(
          color: AppStyles.bgColor,
          borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))
      )),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;

  const AppLayoutBuilderWidget({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final int width = (constraints.constrainWidth() / randomDivider).floor();
      return Flex(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              width,
              (index) => const SizedBox(
                    width: 3,
                    height: 1,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white)),
                  )));
    });
  }
}

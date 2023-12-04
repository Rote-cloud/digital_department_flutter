import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';

import '../../assets/Size.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MySize.heightBack,
        decoration: const BoxDecoration(
          color: MyColor.colorBackground,
        ),
      );
  }
}
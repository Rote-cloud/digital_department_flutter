import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Font.dart';
import 'package:flutter_project/assets/Strings.dart';

class NameTop extends StatelessWidget {
  const NameTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      MyStrings.textNameTop,
      textAlign: TextAlign.center,
      style: MyFont.textStyleNameTop,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_project/view/appBar/Background.dart';
import 'package:flutter_project/view/appBar/AvatarTop.dart';
import 'package:flutter_project/view/appBar/IconTop.dart';
import 'package:flutter_project/view/appBar/NameTop.dart';


class BarTop extends StatelessWidget {
  const BarTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          child: Stack(
            children: [
              Positioned(
                child: Background(),
              ),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                child: IconTop(),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 58,
                child: AvatarTop(),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 200,
                child: NameTop(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
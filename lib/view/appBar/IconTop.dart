import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Size.dart';

class IconTop extends StatelessWidget {
  const IconTop({super.key});

  @override
  Widget build(BuildContext context) {
    Color iconColor = MyColor.colorIcon;

    return Container(
      height: MySize.heightIconTop,
      padding: const EdgeInsets.only(top: MySize.paddingIconTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.close, color: iconColor),
            onPressed: () {
              print('КРЕСТ');
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app, color: iconColor),
            onPressed: () {
              print('ВЫХОД');
            },
          ),
        ],
      ),
    );
  }
}
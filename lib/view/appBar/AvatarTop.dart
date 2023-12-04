import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Font.dart';
import 'package:flutter_project/assets/Size.dart';
import 'package:flutter_project/assets/Strings.dart';

class AvatarTop extends StatelessWidget {
  const AvatarTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MySize.sizeAvatar,
          height: MySize.sizeAvatar,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage(MyStrings.imageAvatar),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(MySize.borderRadiusAvatar),
            ),
            shadows: const [
              MyFont.boxShadowAvatar
            ],
          ),
        )
      ],
    );
  }
}
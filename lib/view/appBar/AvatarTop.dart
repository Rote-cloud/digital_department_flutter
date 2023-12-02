import 'package:flutter/material.dart';

class AvatarTop extends StatelessWidget {
  const AvatarTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 110,
          height: 110,
          //padding: const EdgeInsets.only(bottom: 36.0),
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage("images/photo.png"),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x7A1D1D25),
                blurRadius: 24,
                offset: Offset(0, 16),
                spreadRadius: -16,
              )
            ],
          ),
        )
      ],
    );
  }
}
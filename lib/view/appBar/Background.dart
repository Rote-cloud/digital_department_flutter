import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width:  375,
        height: 306,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x14000014),
              blurRadius: 16,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
      );
  }
}
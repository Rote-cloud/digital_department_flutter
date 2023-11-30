import 'package:flutter/material.dart';

class IconTop extends StatelessWidget {
  const IconTop({super.key});

  @override
  Widget build(BuildContext context) {
    Color iconColor = const Color.fromRGBO(8, 166, 82, 1.0);

    return Container(
      width: 375,
      height: 88,
      padding: const EdgeInsets.only(top: 44.0),
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
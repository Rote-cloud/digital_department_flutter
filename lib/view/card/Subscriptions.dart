import 'package:flutter/material.dart';
import 'package:flutter_project/view/card/Payment.dart';
import 'package:flutter_project/view/card/SubscriptionName.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions( {
    super.key
  });

  @override
  State<Subscriptions> createState() => _TextConnection();
}

class _TextConnection extends State<Subscriptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 130,
      clipBehavior: Clip.antiAlias,
      //color: Colors.black,
      //padding: const EdgeInsets.fromLTRB(16, 8, 8, 32),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x114F4F6C),
            blurRadius: 14,
            offset: Offset(0, 8),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              SubscriptionName(),
              //Payment()
        ],
      ),
    );
  }
  }
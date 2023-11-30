import 'package:flutter/material.dart';
import 'package:flutter_project/view/card/Payment.dart';
import 'package:flutter_project/view/card/SubscriptionName.dart';

class Subscriptions extends StatelessWidget {
  final String image;
  final String title;
  final String payment;
  final String price;
  const Subscriptions( {
    super.key, required this.image, required this.title, required this.payment, required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 130,
      clipBehavior: Clip.antiAlias,
      //color: Colors.black,
      //padding: const EdgeInsets.fromLTRB(16, 8, 8, 32),
      //padding: const EdgeInsets.only(right: 8.0),
      margin: EdgeInsets.only(right:8),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              SubscriptionName(image: image, title: title),
              const SizedBox(height: 24,),
              Payment(payment: payment, price: price,)
        ],
      ),
    );
  }
  }
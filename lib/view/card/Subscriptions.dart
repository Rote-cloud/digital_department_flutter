import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Font.dart';
import 'package:flutter_project/assets/Size.dart';
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
      width: MySize.widthCard,
      height: MySize.heightCard,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(right: MySize.paddingLR),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySize.borderRadiusCard),
        ),
        shadows: const [
          MyFont.boxShadowCard1,
          MyFont.boxShadowCard2
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              SubscriptionName(image: image, title: title),
              const SizedBox(height: MySize.heightSpaceCard),
              Payment(payment: payment, price: price,)
        ],
      ),
    );
  }
  }
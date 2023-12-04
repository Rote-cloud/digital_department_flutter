import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Font.dart';
import 'package:flutter_project/assets/Size.dart';

class Payment extends StatelessWidget {
  final String payment, price;

  const Payment({super.key, required this.payment, required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySize.heightPayment,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: MySize.paddingCard),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SizedBox(
                        height: MySize.heightTextPayment,
                        child: Text(
                          payment,
                          style: MyFont.textStylePaymentCard,
                        ),
                      ),
                      const SizedBox(height: MySize.heightSpaceTextCard),
                      SizedBox(
                        height: MySize.heightTextPayment,
                        child: Text(
                          price,
                          style: MyFont.textStylePriceCard,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: MySize.paddingCard,
          ),
        ],
      ),
    );
  }
  }
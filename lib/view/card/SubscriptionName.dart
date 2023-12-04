import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Font.dart';
import 'package:flutter_project/assets/Size.dart';

class SubscriptionName extends StatelessWidget {
  final String image, title;
  const SubscriptionName( {
    super.key, required this.image, required this.title
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySize.heightSubscriptionName,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            //height: double.infinity,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: MySize.heightSpaceTextCard),
                      SizedBox(
                        width: MySize.sizeImageCard,
                        height: MySize.sizeImageCard,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MySize.sizeImageCard,
                              height: MySize.sizeImageCard,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: MySize.sizeImageCard,
                                      height: MySize.sizeImageCard,
                                      decoration: ShapeDecoration(
                                        color: MyColor.colorCardIconBack,
                                        shape: const OvalBorder(),
                                        image: DecorationImage(
                                          image: AssetImage(image),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: MySize.heightSpaceTextCard),
                    ],
                  ),
                ),
                const SizedBox(width: MySize.widthSpaceCard),
                Container(
                  width: MySize.widthTextCard,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          title,
                          style: MyFont.textStyleSubscriptionName,
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
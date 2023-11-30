import 'package:flutter/material.dart';

class SubscriptionName extends StatefulWidget {
  const SubscriptionName( {
    super.key
  });

  @override
  State<SubscriptionName> createState() => _SubscriptionName();
}

class _SubscriptionName extends State<SubscriptionName> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
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
                const SizedBox(width: 16, height: 36),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 36, height: 2),
                      SizedBox(
                        width: 36,
                        height: 36,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 36,
                              height: 36,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 36,
                                      height: 36,
                                      decoration: const ShapeDecoration(
                                        color: Color(0x148C8C8C),
                                        shape: OvalBorder(),
                                        image: DecorationImage(
                                          image: AssetImage("assets/flutter_png/sber.png"),
                                          //fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 8,
                                    top: 8.07,
                                    child: SizedBox(
                                      width: 20.62,
                                      height: 19.89,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 1.50,
                                            top: 2.93,
                                            child: SizedBox(
                                              width: 7,
                                              height: 7,
                                              child: Stack(children: [

                                                  ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 36, height: 2),
                    ],
                  ),
                ),
                const SizedBox(width: 12, height: 36),
                Container(
                  width: 136,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'СберПрайм',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            //height: 0.08,
                            letterSpacing: -0.40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 16,
            height: 40,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 16, height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
  }
import 'package:flutter/material.dart';

class TariffsAndLimits extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const TariffsAndLimits( {
    super.key, required this.image, required this.title, required this.text
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 12.0),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //const SizedBox(width: 30, height: 40),
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 26, height: 2),
                                  SizedBox(
                                    width: 36,
                                    height: 36,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(image),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //const SizedBox(width: 20, height: 2),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12, height: 40),
                            SizedBox(
                              width: 263,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      title,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      text,
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.550000011920929),
                                        fontSize: 14,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.41,
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
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30, height: 40),
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: Stack(children: [
                                Positioned(
                                  top: 10,
                                  child:
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.32),
                                  ),
                                )

                              ]),
                            ), //SizedBox(width: 8, height: 40),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
  }
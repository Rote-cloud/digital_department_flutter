import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Font.dart';
import 'package:flutter_project/assets/Size.dart';

class Information extends StatelessWidget {
  final String image;
  final String title;
  const Information( {
    super.key, required this.image, required this.title
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {

        },
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: MySize.paddingBottomTariffs),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: MySize.paddingBottomTariffs),
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
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: MySize.widthSpaceTextTariffs,
                                        height: MySize.heightSpaceTextCard),
                                    SizedBox(
                                      width: MySize.sizeImageCard,
                                      height: MySize.sizeImageCard,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: Container(
                                              width: MySize.sizeImageCard,
                                              height: MySize.sizeImageCard,
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
                                  ],
                                ),
                              ),
                              const SizedBox(width: MySize.paddingBottomTariffs),
                              SizedBox(
                                width: MySize.widthTextTariffs,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        title,
                                        style: MyFont.textStyleTitle,
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
                              SizedBox(width: MySize.widthSpaceArrow),
                              SizedBox(
                                width: MySize.sizeArrow,
                                height: MySize.sizeArrow,
                                child: Stack(children: [
                                  Positioned(
                                    top: MySize.paddingTopArrow,
                                    child:
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: MySize.sizeIconArrow,
                                      color: MyColor.colorIconArrow,
                                    ),
                                  )
                                ]),
                              ),
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
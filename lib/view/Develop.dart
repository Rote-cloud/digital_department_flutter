import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Size.dart';
import 'package:flutter_project/assets/Strings.dart';
import 'package:flutter_project/view/Chips.dart';
import 'package:flutter_project/view/Information.dart';
import 'package:flutter_project/view/TariffsAndLimits.dart';
import 'package:flutter_project/view/card/Subscriptions.dart';
import 'package:flutter_project/view/TextConnection.dart';


class Develop extends StatefulWidget {
  const Develop({super.key});

  @override
  State<Develop> createState() => _Develop();
}

class _Develop extends State<Develop> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: MySize.lenBar,
      child: Scaffold(
          backgroundColor: MyColor.colorBackground,
          appBar: const TabBar(
              labelColor: MyColor.colorTabBar,
              indicatorColor: MyColor.colorTabBar,
              tabs: [
                SizedBox(
                    width: MySize.widthBottomTabBar,
                    child: Tab(text: MyStrings.textProfile)
                ),
                SizedBox(
                  width: MySize.widthBottomTabBar,
                  child: Tab(text: MyStrings.textSetting,),
                )
              ],
            ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(children: [
                  const TextConnection(title: MyStrings.title1,
                    text: MyStrings.text1,),
                  SizedBox(
                    height: MySize.heightMainCard,
                    child: ListView(
                      padding: const EdgeInsets.only(left: MySize.paddingLR, right: MySize.paddingLR,
                          bottom: MySize.paddingTB, top: MySize.paddingTB),
                      scrollDirection: Axis.horizontal, // Set the scroll direction
                      shrinkWrap: true,
                      children: const [
                        Subscriptions(image: MyStrings.textCardImage1, title: MyStrings.textCardTitle1,
                            payment: MyStrings.textCardPayment1, price: MyStrings.textCardPrice1),
                        Subscriptions(image: MyStrings.textCardImage2, title: MyStrings.textCardTitle2,
                            payment: MyStrings.textCardPayment2, price: MyStrings.textCardPrice2)
                      ],
                    ),
                  ),
                  const SizedBox(height: MySize.spaceCardAndTariffs),
                  const TextConnection(title: MyStrings.title2, text: MyStrings.text2),
                  const TariffsAndLimits(image: MyStrings.textTariffsImage1,
                      title: MyStrings.textTariffsTitle1, text: MyStrings.textTariffsText1),
                  const Divider(
                    color: MyColor.colorLine,
                    height: MySize.heightLine,
                    indent: MySize.indentLine,
                  ),
                  const TariffsAndLimits(image: MyStrings.textTariffsImage2,
                      title: MyStrings.textTariffsTitle2, text: MyStrings.textTariffsText2),
                  const Divider(
                    color: MyColor.colorLine,
                    height: MySize.heightLine,
                    indent: MySize.indentLine,
                  ),
                  const Information(image: MyStrings.textInfoImage,
                      title: MyStrings.textInfoTitle),
                  const TextConnection(title: MyStrings.title3,
                      text: MyStrings.text3),
                  const Chips()
                ]),
              ),
              const Center(
                child: Text("TEXT"),
              )
            ],
          )
      ),
    );
  }
}

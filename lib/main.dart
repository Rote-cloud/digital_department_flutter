import 'package:flutter/material.dart';
import 'package:flutter_project/view/Chips.dart';
import 'package:flutter_project/view/Information.dart';
import 'package:flutter_project/view/TariffsAndLimits.dart';
import 'package:flutter_project/view/appBar/BarTop.dart';
import 'package:flutter_project/view/card/Subscriptions.dart';
import 'package:flutter_project/view/TextConnection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
          //backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 230,
            backgroundColor: Colors.white,
            shadowColor: Color(0x14000014),
            title: BarTop(),
            bottom: const TabBar(
              labelColor: Color.fromRGBO(8, 166, 82, 1.0),
              indicatorColor: Color.fromRGBO(8, 166, 82, 1.0),
              tabs: [
                Tab(text: "Профиль"),
                Tab(text: "Настройки",)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(children: [
                  const TextConnection(title: 'У вас подключено',
                    text: 'Подписки, автоплатежи и сервисы на которые вы подписались',),
                  SizedBox(
                    height: 130,
                    //width: 375,// Important to set a high
                    child: ListView(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      scrollDirection: Axis.horizontal, // Set the scroll direction
                      shrinkWrap: true,
                      children: const [
                        Subscriptions(image: "images/sberPrime.png", title: "СберПрайм", payment: 'Платёж 9 июля', price: '199 ₽ в месяц'),
                        Subscriptions(image: "images/percent.png", title: "Переводы", payment: "Автопродление 21 августа", price: "199 ₽ в месяц")
                      ],
                    ),
                  ),
                  const SizedBox(height: 26),
                  const TextConnection(title: "Тарифы и лимиты", text: "Для операций в Сбербанк Онлайн"),
                  const TariffsAndLimits(image: "images/limit.png",
                      title: "Изменить суточный лимит", text: "На платежи и переводы"),
                  const Divider(
                    color: Color.fromRGBO(0, 0, 0, 0.12),
                    height: 1,
                    indent: 70,
                  ),
                  const TariffsAndLimits(image: "images/empty_percent.png",
                      title: "Переводы без комиссии", text: "Показать остаток в этом месяце"),
                  const Divider(
                    color: Color.fromRGBO(0, 0, 0, 0.12),
                    height: 1,
                    indent: 70,
                  ),
                  const Information(image: "images/arrows.png",
                      title: "Информация о тарифах и лимитах"),
                  const TextConnection(title: "Интересы",
                      text: "Мы подбираем истории и предложения по темам, которые вам нравятся"),
                  const Chips()
                ]),
              ),
              Center(
                child: Text("TEXT"),
              )
            ],
          )
      ),
    );
  }
}

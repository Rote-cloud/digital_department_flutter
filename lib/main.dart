import 'package:flutter/material.dart';
import 'package:flutter_project/view/appBar/Background.dart';
import 'package:flutter_project/view/appBar/BarTop.dart';
import 'package:flutter_project/view/card/Payment.dart';
import 'package:flutter_project/view/card/SubscriptionName.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(children: [
        const BarTop(),
        const TextConnection(),
        //Background()
        SizedBox(
          height: 130,
          width: 375,// Important to set a high
          child: ListView(
            padding: const EdgeInsets.only(left: 16.0),
            scrollDirection: Axis.horizontal, // Set the scroll direction
            shrinkWrap: true,
            children: const [
              Subscriptions(image: "images/sberPrime.png", title: "СберПрайм", payment: 'Платёж 9 июля', price: '199 ₽ в месяц'),
              Subscriptions(image: "images/percent.png", title: "Переводы", payment: "Автопродление 21 августа", price: "199 ₽ в месяц")
              // You can add as many as you want ...
            ],
          ),
        ),
      ])
    );
  }
}

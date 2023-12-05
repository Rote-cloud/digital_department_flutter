import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Size.dart';
import 'package:flutter_project/view/Develop.dart';
import 'package:flutter_project/view/appBar/BarTop.dart';

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
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                const SliverAppBar(
                  expandedHeight: MySize.toolbarHeight,
                  flexibleSpace: FlexibleSpaceBar(
                    background: BarTop(),
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                Develop(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

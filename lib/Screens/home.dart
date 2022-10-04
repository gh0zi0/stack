import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:line_icons/line_icons.dart';
import 'burger.dart';
import 'chess.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController tab;
  List title = ['Chess', 'Burger'];

  @override
  void initState() {
    tab = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          centerTitle: true,
          title: Text(title[tab.index]),
          bottom: TabBar(
              controller: tab,
              onTap: (value) => setState(() {}),
              tabs: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(LineIcons.chess),
                ),
                Icon(LineIcons.hamburger)
              ]),
        ),
        body: TabBarView(
            controller: tab,
            physics: const NeverScrollableScrollPhysics(),
            children: const [Chess(), Burger()]),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:islami_app/ui/home/hadeth_tab/hadeth_tab_widget.dart';

import 'package:islami_app/ui/home/quran_tab/quran_tab_widget.dart';
import 'package:islami_app/ui/home/radio_tab/radio_tab_widget.dart';
import 'package:islami_app/ui/home/sebha_tab/sebha_tab_widget.dart';
import 'package:islami_app/ui/home/settings_tab/settings_tab_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    quranTabWidget(),
    hadethTabWidget(),
    sebhaTabWidget(),
    radioTabWidget(),
    settingsTabWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/main_background.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFB7935F),
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label: "hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label: "sebha"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                label: "radio"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: Icon((Icons.settings)),
                label: "settings"),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}

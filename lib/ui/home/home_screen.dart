import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';

import 'package:islami_app/ui/home/hadeth_tab/hadeth_tab_widget.dart';

import 'package:islami_app/ui/home/quran_tab/quran_tab_widget.dart';
import 'package:islami_app/ui/home/radio_tab/radio_tab_widget.dart';
import 'package:islami_app/ui/home/sebha_tab/sebha_tab_widget.dart';
import 'package:islami_app/ui/home/settings_tab/settings_tab_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

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
    settingsProvider provider=Provider.of<settingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(provider.getBackGrounImage()))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_name),
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
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor:  Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label:  AppLocalizations.of(context)!.ahadeth),
            BottomNavigationBarItem(
                backgroundColor:  Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label:  AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                backgroundColor:  Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                label:  AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor:  Theme.of(context).primaryColor,
                icon: Icon((Icons.settings)),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}

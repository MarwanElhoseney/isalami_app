import 'package:flutter/material.dart';

class settingsProvider extends ChangeNotifier{
  ThemeMode currentTheme=ThemeMode.system;
  String currentLang="en";

  void chandeApplicationLanguage(String newLang){
    if(newLang==currentLang)return;
    currentLang=newLang;
    notifyListeners();
  }

  void chandeApplicationTheme(ThemeMode newTheme){
    if(newTheme==currentTheme)return;
    currentTheme=newTheme;
    notifyListeners();
  }
  String getBackGrounImage(){
    return currentTheme==ThemeMode.light?"assets/images/main_background.png":
        "assets/images/dark_bg.png";
  }
}
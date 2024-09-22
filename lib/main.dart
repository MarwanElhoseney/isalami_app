import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/chapter_detail_screen/chapter_details_screen.dart';
import 'package:islami_app/ui/style/my_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        hadeathDetailsScreen.routeName: (context) => hadeathDetailsScreen(),
        chapterDetailScreen.routeName: (context) => chapterDetailScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

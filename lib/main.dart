import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/chapter_detail_screen/chapter_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFFB7935F),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
            primary: Color(0xFF141A2E),
            onPrimary: Color(0xFFffffff),
            secondary: Color(0xFFFACC1D),
            onSecondary: Colors.black,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              size: 42,
            ),
            unselectedItemColor: Colors.white,
          ),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          scaffoldBackgroundColor: Colors.transparent),
      darkTheme: ThemeData(
          primaryColor: Color(0xFFB7935F),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
            primary: Color(0xFF141A2E),
            onPrimary: Color(0xFFffffff),
            secondary: Color(0xFFFACC1D),
            onSecondary: Colors.black,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              size: 42,
            ),
            unselectedItemColor: Colors.white,
          ),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          scaffoldBackgroundColor: Colors.transparent),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        chapterDetailScreen.routeName: (context) => chapterDetailScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

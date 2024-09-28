import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/chapter_detail_screen/chapter_details_screen.dart';
import 'package:islami_app/ui/style/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => settingsProvider(),
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    settingsProvider provider=Provider.of<settingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(provider.currentLang),
      theme: myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,
      themeMode: provider.currentTheme,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        hadeathDetailsScreen.routeName: (context) => hadeathDetailsScreen(),
        chapterDetailScreen.routeName: (context) => chapterDetailScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

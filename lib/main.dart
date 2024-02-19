import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_session_11/home/home_page.dart';
import 'package:islami_c10_session_11/home/tabs/ahadeth_tab.dart';
import 'package:islami_c10_session_11/home/tabs/quran_tab.dart';
import 'package:islami_c10_session_11/home/tabs/radio_tab.dart';
import 'package:islami_c10_session_11/home/tabs/sebha_tab.dart';
import 'package:islami_c10_session_11/home/tabs/settings_tab.dart';
import 'package:islami_c10_session_11/my_theme_data.dart';
import 'package:islami_c10_session_11/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        //RadioPage.routeName: (context) => RadioPage(),
        //QuranPage.routeName: (context) => QuranPage(),
        //MoshafPage.routeName: (context) => MoshafPage(),
        //SebhaPage.routeName: (context) => SebhaPage(),
        //SettingsPage.routeName: (context) => SettingsPage(),
      },
    );
  }
}

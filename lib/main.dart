import 'package:flutter/material.dart';
import 'package:islami_c10_session_11/home/home_page.dart';
import 'package:islami_c10_session_11/home/tabs/moshaf_tab.dart';
import 'package:islami_c10_session_11/home/tabs/quran_tab.dart';
import 'package:islami_c10_session_11/home/tabs/radio_tab.dart';
import 'package:islami_c10_session_11/home/tabs/sebha_tab.dart';
import 'package:islami_c10_session_11/home/tabs/settings_tab.dart';

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
      routes: {
        HomePage.routeName: (context) => HomePage(),
        //RadioPage.routeName: (context) => RadioPage(),
        //QuranPage.routeName: (context) => QuranPage(),
        //MoshafPage.routeName: (context) => MoshafPage(),
        //SebhaPage.routeName: (context) => SebhaPage(),
        //SettingsPage.routeName: (context) => SettingsPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c10_session_11/hadeth_details/hadeth_details.dart';
import 'package:islami_c10_session_11/home/home_page.dart';
import 'package:islami_c10_session_11/my_theme_data.dart';
import 'package:islami_c10_session_11/providers/my_provider.dart';
import 'package:islami_c10_session_11/sura_details/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    //NOTE1: this is the object we created^.
    return MaterialApp(
      /*localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],*/
      //or we use this
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("${provider.languageCode}"),
      //NOTE2: ^I can't call My provider without creating an object from my Provider.
      //      like in note1.
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: provider.themeMode,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),
        //RadioPage.routeName: (context) => RadioPage(),
        //QuranPage.routeName: (context) => QuranPage(),
        //MoshafPage.routeName: (context) => MoshafPage(),
        //SebhaPage.routeName: (context) => SebhaPage(),
        //SettingsPage.routeName: (context) => SettingsPage(),
      },
    );
  }
}

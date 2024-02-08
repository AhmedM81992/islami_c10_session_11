import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_session_11/home/tabs/moshaf_tab.dart';
import 'package:islami_c10_session_11/home/tabs/quran_tab.dart';
import 'package:islami_c10_session_11/home/tabs/radio_tab.dart';
import 'package:islami_c10_session_11/home/tabs/sebha_tab.dart';
import 'package:islami_c10_session_11/home/tabs/settings_tab.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "Home";
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back_ground/background2.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "إسلامي",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: index,
          backgroundColor: Color(0xffB7935F),
          type: BottomNavigationBarType.fixed,
          iconSize: 35,
          elevation: 0,
          //older sessions needed that line to show the backgroundColors
          selectedItemColor: Colors.white,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icons/ic_radio.png")),
                label: "add"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icons/ic_sebha.png")),
                label: "add"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icons/ic_quran.png")),
                label: "add"),
            BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage("assets/images/icons/ic_moshaf.png")),
                label: "add"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "add"),
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    QuranTab(),
    MoshafTab(),
    SettingsTab()
  ];
}

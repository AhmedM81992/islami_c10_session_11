import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c10_session_11/home/tabs/ahadeth_tab.dart';
import 'package:islami_c10_session_11/home/tabs/quran_tab.dart';
import 'package:islami_c10_session_11/home/tabs/radio_tab.dart';
import 'package:islami_c10_session_11/home/tabs/sebha_tab.dart';
import 'package:islami_c10_session_11/home/tabs/settings_tab.dart';
import 'package:islami_c10_session_11/providers/my_provider.dart';
import 'package:provider/provider.dart';

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
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          //image: AssetImage("assets/images/back_ground/background2.png"),
          // we used provider to replace this.
          image: AssetImage(provider.getBackgroundPath()),
        ),
      ),
      child: Scaffold(
        //backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.app_name,
            // style: GoogleFonts.elMessiri( //replaced by using theme for appbar.
            //     fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          /*// showSelectedLabels: false,
          // showUnselectedLabels: false,
          // backgroundColor: Color(0xffB7935F),
          // type: BottomNavigationBarType.fixed,
          // elevation: 0,
          //NOTE: In older sessions needed that line to show the backgroundColors
          //selectedItemColor: Colors.white,*/ //replaced by theme data.
          currentIndex: index,
          iconSize: 35,
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
    AhadethTab(),
    QuranTab(),
    SettingsTab()
  ];
}

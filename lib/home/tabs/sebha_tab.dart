import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  //static const String routeName = "Sebha";
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  String texts = "";
  int mainCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 125, left: 190),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (counter < 30) {
                          counter++;
                          mainCounter++;
                        } else {
                          counter = 0;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset(
                      'assets/images/sebha_page/headofseb7a.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 167, left: 90),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (counter < 30) {
                          counter++;
                          mainCounter++;
                        } else {
                          counter = 0;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        padding: EdgeInsets.zero,
                        backgroundColor: Color(0xfffafafa)),
                    child: Image.asset(
                      'assets/images/sebha_page/bodyofseb7a.png',
                      width: 240,
                      height: 235,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 100, top: 10),
            child: Text(
              "عدد التسبيحات",
              style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w600, fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 95),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "$counter",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 100, top: 10),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter < 30) {
                      counter++;
                      mainCounter++;
                    } else {
                      counter = 0;
                    }
                  });
                },
                child: Text(
                  "${switchWord()}",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffB7935F),
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 5, bottom: 5))),
          ),
        ],
      ),
    );
  }

  String switchWord() {
    if (mainCounter < 30) {
      return "سبحان الله";
    } else if (mainCounter < 60) {
      return "الحمدلله";
    } else if (mainCounter < 90) {
      return "الله اكبر";
    }
    mainCounter = 0;
    return "سبحان الله";
  }
}

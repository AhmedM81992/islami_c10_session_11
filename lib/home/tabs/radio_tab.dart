import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  //static const String routeName = "RadioPage";
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 160),
              child: Image(
                  image: AssetImage("assets/images/radio_page/radiopic.png"))),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "إذاعة القرآن الكريم",
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 140),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous_sharp,
                    color: Color(0xffB7935F),
                    size: 35,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: Color(0xffB7935F),
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_next_sharp,
                    color: Color(0xffB7935F),
                    size: 35,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

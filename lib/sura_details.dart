import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_session_11/models/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetailsScreen";
  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    if (verses.isEmpty) {
      loadFile(model.index);
    }

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
          backgroundColor: Colors.transparent,
          title: Text(
            model.name,
            style: GoogleFonts.elMessiri(
                fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Card(
          margin: EdgeInsets.all(12),
          elevation: 12,
          color: Colors.white.withOpacity(.7),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: Colors.transparent)),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (context, index) {
              return Text(
                verses[index],
                style: GoogleFonts.elMessiri(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: .5),
                textAlign: TextAlign.center,
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String sura =
        await rootBundle.loadString("assets/files/sowar/${index + 1}.txt");
    List<String> lines = sura.split("\n");

    verses = lines;
    print(lines);
    setState(() {});
  }
}

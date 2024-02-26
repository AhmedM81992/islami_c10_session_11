import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_session_11/models/sura_model.dart';
import 'package:islami_c10_session_11/providers/my_provider.dart';
import 'package:islami_c10_session_11/sura_details/sure_details_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "SuraDetailsScreen";
  SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    // if (verses.isEmpty) {
    //   loadFile(model.index);
    // }

    var pro = Provider.of<MyProvider>(context);

    return ChangeNotifierProvider<SuraDetailsProvider>(
      create: (context) => SuraDetailsProvider()..loadFile(model.index),
      //".." it took an object from SuraDetailsProvider().
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvider>(context);
        //provider.loadFile(model.index);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              //image: AssetImage("assets/images/back_ground/background2.png"),
              //replaced by provider settings.
              image: AssetImage(pro.getBackgroundPath()),
            ),
          ),
          child: Scaffold(
            //backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              title: Text(
                model.name,
                // style: GoogleFonts.elMessiri(
                //     fontWeight: FontWeight.bold, fontSize: 30),
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
                    provider.verses[index],
                    style: /*GoogleFonts.elMessiri(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: .5),*/
                        Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  );
                },
                itemCount: provider.verses.length,
              ),
            ),
          ),
        );
      },
    );
  }
}

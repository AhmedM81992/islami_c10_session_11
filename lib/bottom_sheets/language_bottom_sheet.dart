import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_session_11/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("en");
                },
                child: Text("English",
                    style: GoogleFonts.elMessiri(
                        fontSize: 30,
                        color: provider.languageCode == "en"
                            ? MyThemeData.primaryColor
                            : MyThemeData.blackColor)),
              ),
              if (provider.languageCode == "en") ...[
                Icon(Icons.check, size: 30, color: MyThemeData.primaryColor)
              ],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("ar");
                },
                child: Text(
                  "Arabic",
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      color: provider.languageCode == "ar"
                          ? MyThemeData.primaryColor
                          : MyThemeData.blackColor),
                ),
              ),
              if (provider.languageCode == "ar") ...[
                Icon(Icons.check, size: 30, color: MyThemeData.primaryColor)
              ],
            ],
          ),
        ],
      ),
    );
  }
}

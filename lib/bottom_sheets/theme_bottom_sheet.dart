import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_session_11/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

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
                  provider.changeTheme(ThemeMode.light);
                },
                child: Text("Light",
                    style: GoogleFonts.elMessiri(
                        fontSize: 30,
                        color: provider.themeMode == ThemeMode.light
                            ? MyThemeData.primaryColor
                            : MyThemeData.blackColor)),
              ),
              if (provider.themeMode == ThemeMode.light) ...[
                Icon(Icons.check, size: 30, color: MyThemeData.primaryColor)
              ],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeTheme(ThemeMode.dark);
                },
                child: Text(
                  "Dark",
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      color: provider.themeMode == ThemeMode.dark
                          ? MyThemeData.primaryColor
                          : MyThemeData.blackColor),
                ),
              ),
              if (provider.themeMode == ThemeMode.dark) ...[
                Icon(Icons.check, size: 30, color: MyThemeData.primaryColor)
              ],
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_c10_session_11/bottom_sheets/language_bottom_sheet.dart';
import 'package:islami_c10_session_11/bottom_sheets/theme_bottom_sheet.dart';
import 'package:islami_c10_session_11/main.dart';
import 'package:islami_c10_session_11/my_theme_data.dart';
import 'package:islami_c10_session_11/providers/my_provider.dart';

class SettingsTab extends StatefulWidget {
  //static const String routeName = "Settings";
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 500,
                    child: LanguageBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.primaryColor, width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: LanguageBottomSheet() == "en"
                  ? Text(
                      "English",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  : Text("Arabic",
                      style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            "Theme",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                //user will be able to close the container when clicking outside of it.
                isScrollControlled: true,
                //depends on selected hight if it's at 800 it will take the whole screen.
                context: context,
                builder: (context) {
                  return Container(
                    height: 500,
                    child: LanguageBottomSheet(),
                  );
                },
              );
            },
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  isDismissible: true,
                  //user will be able to close the container when clicking outside of it.
                  isScrollControlled: true,
                  //depends on selected hight if it's at 800 it will take the whole screen.
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 500,
                      child: ThemeBottomSheet(),
                    );
                  },
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: MyThemeData.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  "Light",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

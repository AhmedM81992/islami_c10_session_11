import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  //static const String routeName = "MoshafPage";
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_tab/ahadeth_logo.png"),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                ahadethData[index].title,
                textAlign: TextAlign.center,
              );
            },
            itemCount: ahadethData.length,
          ),
        )
      ],
    );
  }

  loadHadethFile() {
    /*String hadethFile =
      await rootBundle.loadString("assets/files/ahadeth/ahadeth.txt");*/
    rootBundle
        .loadString("assets/files/ahadeth/ahadeth.txt")
        .then((hadethFile) {
      List<String> ahadeth = hadethFile.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLines = hadeth.split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        ahadethData.add(HadethModel(title: title, content: hadethContent));
      }
      setState(() {});
    }); //we use this if we dont want to use await.
  }
}

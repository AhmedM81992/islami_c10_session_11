import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../models/hadeth_model.dart';

//other example of using Provider
class HadethDetailsProvider extends ChangeNotifier {
  List<HadethModel> ahadethData = [];
  loadHadethFile() {
    /*String hadethFile =
      await rootBundle.loadString("assets/files/ahadeth/ahadeth.txt");*/
    rootBundle
        .loadString("assets/files/ahadeth/ahadeth.txt")
        .then((hadethFile) {
      List<String> ahadeth = hadethFile.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        //trim removes the space behind and after a word.
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        ahadethData.add(HadethModel(title: title, content: hadethContent));
      }
      notifyListeners();
    }); //we use this if we dont want to use await.
  }
}

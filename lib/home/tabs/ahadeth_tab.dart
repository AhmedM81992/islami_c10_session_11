import 'package:flutter/material.dart';

class AhadethTab extends StatelessWidget {
  //static const String routeName = "MoshafPage";
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
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
      ],
    );
  }
}

loadHadethFile() {}

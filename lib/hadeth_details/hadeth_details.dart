import 'package:flutter/material.dart';
import 'package:islami_c10_session_11/hadeth_details/hadeth_details_provider.dart';
import 'package:islami_c10_session_11/models/hadeth_model.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});
  static const String routeName = "HadethDetail";
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;
    var pro = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(pro.getBackgroundPath()))),
      child: Scaffold(
        appBar: AppBar(
          title: Text("${model.title}"),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * .70,
            margin: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  model.content[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                );
              },
              itemCount: model.content.length,
            ),
          ),
        ),
      ),
    );
  }
}

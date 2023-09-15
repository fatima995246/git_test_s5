import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_s5/Home/hadeth/item_hadeth_details.dart';
import 'package:git_s5/MyTheme.dart';

import '../quran/item_surah_details.dart';
import 'hadeth.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      Image.asset(
        'assets/images/main_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.title}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: MyTheme.WhiteColor,
              borderRadius: BorderRadius.circular(25)),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.08,
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return itemHadethDetails(
                content: args.content[index],
              );
            }),
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}

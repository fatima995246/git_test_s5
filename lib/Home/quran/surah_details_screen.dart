import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_s5/MyTheme.dart';

import 'item_surah_details.dart';

class SurahDetailsScreen extends StatefulWidget {
  static const String routeName = 'surah_details';

  @override
  State<SurahDetailsScreen> createState() => _SurahDetailsScreenState();
}

class _SurahDetailsScreenState extends State<SurahDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as surahDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
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
            '${args.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.length == 0
            ? Center(child: CircularProgressIndicator())
            : Container(
                decoration: BoxDecoration(
                    color: MyTheme.WhiteColor,
                    borderRadius: BorderRadius.circular(25)),
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.08,
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 2,
                    );
                  },
                  itemBuilder: ((context, index) {
                    return itemSurahDetails(
                        content: verses[index], index: index);
                  }),
                  itemCount: verses.length,
                ),
              ),
      )
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('/n');
    verses = lines;
    setState(() {});
    print(lines);
  }
}

//data class
class surahDetailsArgs {
  String name;
  int index;

  surahDetailsArgs({required this.name, required this.index});
}

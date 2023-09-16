import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../MyTheme.dart';
import '../../providers/app_config_provider.dart';
import 'item_hadeth_name.dart';

class Hadeth_tab extends StatefulWidget {
  @override
  State<Hadeth_tab> createState() => _Hadeth_tabState();
}

class _Hadeth_tabState extends State<Hadeth_tab> {
  List <Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    return Center(
      child: Column(
        children: [
          Expanded(
              flex: 1, child: Image.asset('assets/images/ahadeth_image.png')),
          Divider(
            color: provider.isDarkMode()
                ? MyTheme.yelloColor
                : Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.hadeth_name,
            style: Theme
                .of(context)
                .textTheme
                .titleMedium,
          ),
          Divider(
            color: provider.isDarkMode()
                ? MyTheme.yelloColor
                : Theme.of(context).primaryColor,
            thickness: 3,
          ),
          ahadethList.isEmpty ?
          Center(child: CircularProgressIndicator(
            color: Theme
                .of(context)
                .primaryColor,
          ))
              :
          Expanded(
            flex: 3,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                        color: provider.isDarkMode()
                            ? MyTheme.yelloColor
                            : Theme.of(context).primaryColor,
                        thickness: 3,
                      );
              },
              itemBuilder: (context, index) {
                return itemHadethName(hadeth: ahadethList[index],);
              },
              itemCount: ahadethList.length,

            ),
          )
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String alahadethContent =
    await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = alahadethContent.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLine = hadethList[i].split('\n');
      String title = hadethLine[0];
      hadethLine.removeAt(0);
      Hadeth hadeth = Hadeth(content: hadethLine, title: title);
      ahadethList.add(hadeth);
      setState(() {

      });
    }
  }
}
//data class
class Hadeth {
  String title;

  List<String> content;

  Hadeth({required this.content, required this.title});
}
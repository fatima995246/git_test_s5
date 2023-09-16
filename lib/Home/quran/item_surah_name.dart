import 'package:flutter/material.dart';
import 'package:git_s5/Home/quran/surah_details_screen.dart';
import 'package:git_s5/MyTheme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class itemSurahName extends StatelessWidget {
  String name;

  int index;

  itemSurahName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SurahDetailsScreen.routeName,
            arguments: surahDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: provider.isDarkMode()
            ? Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: MyTheme.WhiteColor)
            : Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}

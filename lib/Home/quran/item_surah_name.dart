import 'package:flutter/material.dart';
import 'package:git_s5/Home/quran/surah_details_screen.dart';

class itemSurahName extends StatelessWidget {
  String name;

  int index;

  itemSurahName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SurahDetailsScreen.routeName,
            arguments: surahDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}

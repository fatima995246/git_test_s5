import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemSurahDetails extends StatelessWidget {
  String content;

  int index;

  itemSurahDetails({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content {${index + 1}}',
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}

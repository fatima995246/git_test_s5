import 'package:flutter/material.dart';

import 'hadeth.dart';
import 'hadeth_details_screen.dart';

class itemHadethName extends StatelessWidget {
  Hadeth hadeth;

  itemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}

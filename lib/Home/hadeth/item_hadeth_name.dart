import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../MyTheme.dart';
import '../../providers/app_config_provider.dart';
import 'hadeth.dart';
import 'hadeth_details_screen.dart';

class itemHadethName extends StatelessWidget {
  Hadeth hadeth;

  itemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
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

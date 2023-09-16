import 'package:flutter/material.dart';
import 'package:git_s5/MyTheme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class Radio_tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.12,
          horizontal: MediaQuery.of(context).size.width * 0.01),
      child: Column(
        children: [
          Expanded(
              flex: 2, child: Image.asset('assets/images/radio_image.png')),
          SizedBox(
            height: 30,
          ),
          Text(
            ' أذاعة القرءان الكريم',
            style: TextStyle(
                fontSize: 25,
                color: provider.isDarkMode()
                    ? MyTheme.WhiteColor
                    : MyTheme.blackColor),
          ),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.skip_previous,
                        color: provider.isDarkMode()
                            ? MyTheme.yelloColor
                            : Theme.of(context).primaryColor,
                        size: 25,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        color: provider.isDarkMode()
                            ? MyTheme.yelloColor
                            : Theme.of(context).primaryColor,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.skip_next,
                        color: provider.isDarkMode()
                            ? MyTheme.yelloColor
                            : Theme.of(context).primaryColor,
                        size: 25,
                      ))
                ],
              ))
        ],
      ),
    );
    ;
  }
}

import 'package:flutter/material.dart';
import 'package:git_s5/MyTheme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class Tasbeh_tab extends StatefulWidget {
  @override
  State<Tasbeh_tab> createState() => _Tasbeh_tabState();
}

class _Tasbeh_tabState extends State<Tasbeh_tab> {
  double turns = 0.0;
  int counter = 0;
  int textChangeCount = 0;
  String displayText = ' أستغفر الله';

  void incrementCounter() {
    setState(() {
      if (counter == 33) {
        textChangeCount++;
        switch (textChangeCount) {
          case 1:
            displayText = 'سبحان الله';
            counter = 0;
            break;
          case 2:
            displayText = 'الحمد لله';
            counter = 0;
            break;
          case 3:
            displayText = 'لا اله الا الله ';
            counter = 0;
            break;
          case 4:
            displayText = 'الله أكبر';
            counter = 0;
            textChangeCount = 0;
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 201,
                left: 37,
                child: provider.isDarkMode()
                    ? Image.asset(
                        'assets/images/head_sebha_dark.png',
                      )
                    : Image.asset(
                        'assets/images/head_sebha_logo.png',
                      ),
              ),
              Positioned.fill(
                top: 70, // Adjust the value to control the overlap
                child: AnimatedRotation(
                  turns: turns,
                  duration: Duration(seconds: 1),
                  child: provider.isDarkMode()
                      ? Image.asset(
                          'assets/images/body_sebha_dark.png', // Replace with your photo asset path
                        )
                      : Image.asset(
                          'assets/images/body_sebha_logo.png', // Replace with your photo asset path
                        ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  'عدد التسبيحات',
                  style: TextStyle(
                      fontSize: 25,
                      color: provider.isDarkMode()
                          ? MyTheme.WhiteColor
                          : MyTheme.blackColor),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      turns += 1 / 33;
                      counter++;
                      incrementCounter();
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        provider.isDarkMode()
                            ? MyTheme.primaryDark
                            : MyTheme.primaryLight),
                    foregroundColor: MaterialStateProperty.all(
                        provider.isDarkMode()
                            ? MyTheme.WhiteColor
                            : MyTheme.blackColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                        fontSize: 25,
                        color: provider.isDarkMode()
                            ? MyTheme.WhiteColor
                            : MyTheme.blackColor),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: provider.isDarkMode()
                          ? MyTheme.yelloColor
                          : MyTheme.primaryLight,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    displayText,
                    style: TextStyle(
                        fontSize: 20,
                        color: provider.isDarkMode()
                            ? MyTheme.blackColor
                            : MyTheme.WhiteColor),
                  ),
                )
              ],
            ))
      ],
    );
  }
}

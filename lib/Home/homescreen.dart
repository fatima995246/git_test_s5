import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_s5/Home/hadeth/hadeth.dart';
import 'package:git_s5/Home/quran/quran_tab.dart';
import 'package:git_s5/Home/radio/radio.dart';
import 'package:git_s5/Home/tasbeh/tasbeh.dart';

class homescreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
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
            AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/icon_quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/icon_hadeth.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/icon_sebha.png')),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/icon_radio.png')),
                    label: AppLocalizations.of(context)!.radio)
              ]),
        ),
        body: tabs[selectedIndex],
      )
    ]);
  }

  List<Widget> tabs = [Quran_tab(), Hadeth_tab(), Tasbeh_tab(), Radio_tab()];
}

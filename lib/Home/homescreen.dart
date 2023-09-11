import 'package:flutter/material.dart';
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
            'Islami',
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
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: 'Tasbeh'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: 'Radio')
              ]),
        ),
        body: tabs[selectedIndex],
      )
    ]);
  }

  List<Widget> tabs = [Quran_tab(), Hadeth_tab(), Tasbeh_tab(), Radio_tab()];
}

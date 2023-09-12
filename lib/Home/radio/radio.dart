import 'package:flutter/material.dart';
import 'package:git_s5/MyTheme.dart';

class Radio_tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            style: TextStyle(fontSize: 25),
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
                        color: MyTheme.primaryLight,
                        size: 25,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        color: MyTheme.primaryLight,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.skip_next,
                        color: MyTheme.primaryLight,
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

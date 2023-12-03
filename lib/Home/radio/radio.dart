import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:git_s5/MyTheme.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../../Radios.dart';
import '../../providers/app_config_provider.dart';

class Radio_tab extends StatelessWidget {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return FutureBuilder(
        future: getRadios(),
        builder: (contex, snapshot) {
          if (snapshot.hasData) {
            var radios = snapshot.data?.radios ?? [];
            return Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Image.asset('assets/images/radio_image.png')),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  ' أذاعة القرءان الكريم',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: provider.isDarkMode()
                          ? MyTheme.WhiteColor
                          : MyTheme.blackColor),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => RadioItem(
                      provider: provider,
                      radioModel: radios[index],
                      audioPlayer: player,
                    ),
                    itemCount: radios.length,
                  ),
                )
              ],
            );
          } else if (snapshot.hasError) {
            Center(child: Text(snapshot.error.toString()));
          }
          return Center(child: CircularProgressIndicator());
        });
  }

  Future<Radios> getRadios() async {
    var url = Uri.parse('https://mp3quran.net/api/v3/radios');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return Radios.fromJson(json);
    } else {
      throw Exception('failed to load radios');
    }
  }
}

class RadioItem extends StatelessWidget {
  RadioModel radioModel;

  AudioPlayer audioPlayer;

  RadioItem({
    required this.audioPlayer,
    required this.radioModel,
    super.key,
    required this.provider,
  });

  final AppConfigProvider provider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            radioModel.name ?? '',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: provider.isDarkMode()
                    ? MyTheme.WhiteColor
                    : MyTheme.blackColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    await audioPlayer.play(UrlSource(radioModel.url ?? ''));
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: provider.isDarkMode()
                        ? MyTheme.yelloColor
                        : Theme.of(context).primaryColor,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {
                    audioPlayer.stop();
                  },
                  icon: Icon(
                    Icons.stop,
                    color: provider.isDarkMode()
                        ? MyTheme.yelloColor
                        : Theme.of(context).primaryColor,
                    size: 40,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

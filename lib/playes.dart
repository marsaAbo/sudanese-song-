import'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import'package:audioplayers/audioplayers.dart';

class Players extends StatefulWidget{


  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Players();
  }
}

class _Players extends State<Players>{



  void  playSound(int number){
    final player = AudioCache();
    player.play('hu$number.mp3');


  }



  Expanded buttonGanerat({color , number}){
    return Expanded(
      child: Center(
        child: IconButton(
          color: color,
          icon: Icon(Icons.audiotrack),
          iconSize: 60.0,
          onPressed: () {
            playSound(number);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.black,
        body:

            buttonGanerat(color: Colors.blueAccent , number: 2),

          ),

      );
  }

}
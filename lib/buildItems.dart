import 'package:flutter/material.dart';
import './playes.dart';

class BuildSongs extends StatelessWidget{
  final String songName;
  final String songPath;

  BuildSongs ({this.songName , this.songPath});

  @override
  Widget build(BuildContext context) {


    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.audiotrack),
        backgroundColor: Colors.white,
      ),
      title: Text(songName),
      subtitle: Text(songPath),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Players();
        }));

      },

    );
  }

}
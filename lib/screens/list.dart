import 'package:flutter/material.dart';
import '../models/models.dart';
import'../data/husam_alsadeg.dart';
import '../buildItems.dart';

void main() {
  runApp(MaterialApp(home: Songs()));
}

class Songs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Songs();
  }
}

class _Songs extends State<Songs> {

  @override
  Widget build(BuildContext context) {

    List<ModelsSongs> _husSongs = husList ;

    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black87,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body:  ListView(
                 // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Container(
                     padding: EdgeInsets.all(25.0),
                     decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(25)),
                  ),
                  height: 30.0,
                  width: double.infinity,
                ),
                    Container(
                      height: 200.0,
                      child: ListView.builder(
                        itemCount: _husSongs.length,
                      //  padding: const EdgeInsets.all(15.0),
                        itemBuilder: (BuildContext context , int index){
                          return BuildSongs(
                              songName: _husSongs[index].name,
                              songPath: _husSongs[index].songPath,
                          );
                        }
                      ),
                    ),
              ]),
            );
  }
}

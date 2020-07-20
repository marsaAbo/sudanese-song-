import'package:flutter/material.dart';
import './screens/list.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sudanes Songs',
      home: MyApp(),
      theme: ThemeData(
        accentColor: Colors.white,
      ),

    )

  );
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _MyApp();
  }


class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black87,),
            onPressed: () {}
        ),
      ),


      body: SafeArea(
        child: ListView(
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30)),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Find Your',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 3,),
                  Text('Song',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 30.0,
                        color: Colors.black87
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text('Promo Today',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.black87,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(

                      height: 200.0,

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Fbuttomn('images/hes.png'),
                          PromoCard('images/nada.png'),
                          PromoCard('images/taha.jpg'),
                          PromoCard('images/moh.jpg'),
                          PromoCard('images/fat.jpg'),



                        ],
                      ),
                    ),
                  ],
                ),
              ),


          ],
        ),
      ),
    );
  }

  Widget PromoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        width: 80.0,
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image)
            )
        ),


        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.1, 0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1)
                ]

            ),
          ),
        ),
      ),
    );
  }

  Widget Fbuttomn(images) {
    return  FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),

        child: PromoCard(images),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Songs();
          }));
        },


      
    );
  }
}


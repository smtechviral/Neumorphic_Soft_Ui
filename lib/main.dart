import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.add_call,
                  size: 80, color: darkMode ? Colors.white : Colors.black),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: darkMode ? Colors.black54 : Colors.grey[500],
                        offset: Offset(4.0, 3.0),
                        blurRadius: 13.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: darkMode ? Colors.grey[800] : Colors.white,
                        offset: Offset(-4.0, -4.0),

                        blurRadius: 13.0,
                        spreadRadius: 1.0),

                  ]),

            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50, right: 40,left: 40),
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      child: Text(
                        'Light',
                        style: TextStyle(color: Colors.black,fontSize: 20),
                      ),
                      onPressed: () {
                        setState(() {
                          darkMode = false;
                        });
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 50, left: 40,right: 40),
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.black,
                      child: Text(
                        'Dark',
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                      onPressed: () {
                        setState(() {
                          darkMode = true;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
//            SizedBox(height: 50,),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: [
//                Text("Instagram :",style: TextStyle(
//                  color: Colors.cyanAccent,fontSize: 20,fontWeight: FontWeight.bold
//                ),),
//                Text("@smtechviral",style: TextStyle(
//                  color: Colors.black,fontSize: 20
//                ),),
//              ],
//            )
          ],
        ),
      ),
    );
  }
}

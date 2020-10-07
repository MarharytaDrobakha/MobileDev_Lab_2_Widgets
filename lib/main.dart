import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Lab_2_Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MyWidgetMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text("It`s bold throwline text",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Icons: ",
                    style: TextStyle(fontSize: 25),
                  ),
                  Icon(
                    Icons.check,
                    size: 50,
                  ),
                  Icon(
                    Icons.access_alarm,
                    size: 50,
                  ),
                  Icon(
                    Icons.work,
                    size: 50,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Image: ",
                    style: TextStyle(fontSize: 25),
                  ),
                  Image.network(
                    "https://habrastorage.org/webt/rc/uh/yo/rcuhyopuvni8ghulnrotc1hfiru.png",
                    width: 250,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "It`s alignment bottomRight",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.black),
                    color: Colors.amberAccent,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black87,
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(3, 6))
                    ]),
                //color: Colors.amberAccent,
                transform: Matrix4.rotationZ(0.1),
                padding: EdgeInsets.all(20),
                child: Text(
                  "It`s Container with padding, \n transform, decoration and shadow",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text("Expanded \n Container with \n flex 6",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.green,
                    child: Text("Expanded Container with \n flex 2",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,),
                  ),
                )
              ]
              )
            ]
        )
    );
  }

  const MyWidgetMain();
}


class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    MyWidgetMain(),
    Text(
      'It`s previous page',
      style: optionStyle,
    ),
    Text(
      'It`s next page',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar
            : BottomNavigationBar(
        currentIndex : 0,
        backgroundColor: Colors.white24,
        fixedColor
            : Colors.green,
        items
            : [
          BottomNavigationBarItem(
            title
                : Text("Home"),
            icon
                : Icon(Icons.home),),
          BottomNavigationBarItem(
            title
                : Text("Back"),
            icon
                : Icon(Icons.arrow_back),),
          BottomNavigationBarItem(
            title
                : Text("Next"),
            icon
                : Icon(Icons.arrow_forward),),
        ],
        onTap: _onItemTapped
    ),);

  }
}

import 'quiz.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "SUPPBRO",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: ()=>{
          Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute()))
        },
        child: Text("Kuttan"),
      ),
    )
          ],
        ),
      ),
    ));
  }
}



class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My second app'),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          "SUPPBRO",
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  static const String routeName = "/homePage";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
int currentIndex = 0;
var myHome = new MyHomePage();

class _MyHomePageState extends State<MyHomePage> {
  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  List<Widget> pageList = [
    SecondRoute()
  ];
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "homePage",
            icon: Icon(Icons.access_alarm_outlined),
          ),
          BottomNavigationBarItem(
              label: "Cat page",
              icon: Icon(Icons.account_balance_wallet_outlined)),
          BottomNavigationBarItem(
            label: "page3",
            icon: Icon(Icons.add_box_rounded),
          )
        ],
        currentIndex: currentIndex,
        onTap: onTapped,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

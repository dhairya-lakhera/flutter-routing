import 'package:flutter/material.dart';
import './page2.dart';
import './page3.dart';
import './page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myTesting = 'data';

  myFunction(data) {
    setState(() {
      myTesting = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing',
      routes: {
        '/page1': (context) => Page1(myTesting, myFunction),
        '/page2': (context) => Page2(myTesting, myFunction),
        '/page3': (context) => Page3(),
      },
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Column(
        children: [
          TextButton(
            child: Text('page1 '),
            onPressed: () {
              Navigator.of(context).pushNamed('/page1');
            },
          ),
          TextButton(
              child: Text('page 2'),
              onPressed: () {
                Navigator.of(context).pushNamed('/page2');
              }),
          TextButton(
              child: Text('page 3'),
              onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              }),
        ],
      ),
    );
  }
}

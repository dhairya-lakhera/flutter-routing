import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  Color color = Colors.red;

  changeColor() {
    // do something to rebuild only 1st column Text not the whole page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page3'),
        ),
        body: Column(
          children: [
            //First widget
            Text(
              'Title',
              style: TextStyle(color: color),
            ),
            //Second widget
            TextButton(
              onPressed: () => changeColor(),
              child: Text('change color of title'),
            )
          ],
        ));
  }
}

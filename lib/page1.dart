import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  String title;
  Function myHandler;
  Page1(this.title, this.myHandler);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page1'),
        ),
        body: Column(
          children: [
            Text(title),
            TextButton(
              onPressed: () => myHandler('page1 data'),
              child: Text('clicked from page 1'),
            )
          ],
        ));
  }
}

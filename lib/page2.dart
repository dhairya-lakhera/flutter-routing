import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  String title;
  Function myHandler;
  Page2(this.title, this.myHandler);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page2'),
        ),
        body: Column(
          children: [
            Text(title),
            TextButton(
              onPressed: () => myHandler('page2 data'),
              child: Text('clicked from page 2'),
            )
          ],
        ));
  }
}

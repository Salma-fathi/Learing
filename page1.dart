import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[100],
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b116a290442439.5e174ef7ed298.png'),
            Text(
              ' Welcome App learing',
              style: TextStyle(fontSize: 20.0,color: Colors.white),
            )
          ],
        ),
      ),
          );
  }
}
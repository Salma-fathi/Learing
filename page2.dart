import 'package:flutter/material.dart';
class Page2 extends StatelessWidget {
  const Page2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/63de7e90442439.5e174ef7eb761.pnghttps://mir-s3-cdn-cf.behance.net/project_modules/max_1200/63de7e90442439.5e174ef7eb761.png'),
            Text(
              ' Through this application you will learn a lot of skills and develop you for the best',
              style: TextStyle(fontSize: 20.0,color: Colors.white),

            )
          ],
        ),
      ),
    );
  }
}
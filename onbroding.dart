import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled4/pagescreen/page1.dart';
import 'package:untitled4/pagescreen/page2.dart';
import 'package:untitled4/pagescreen/page3.dart';


import '../loginscreen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _control = PageController();
  //
  bool onLastPage= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _control,
              onPageChanged: (index){
                setState(() {
                  onLastPage = ( index==2);
                });

              },
              children: [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
            Container(
              alignment: Alignment(0,0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap :(){
                      _control.jumpToPage(2);
                    },
                    child: Text('skip'),),

                    SmoothPageIndicator(controller:_control , count: 3),
                  //next or done
                  onLastPage ?
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return LoginWithPhone ( );

                      },
                      ),
                      );
                    },
                    child: Text('done') ,) :
                  GestureDetector(
                    onTap: (){
                      _control.nextPage(duration: Duration(milliseconds:500),
                          curve:Curves.easeIn);
                    },
                    child: Text('next') ,)
                ],
              ),
            ),
          ],
        )
    );
  }
}





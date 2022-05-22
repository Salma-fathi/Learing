
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom bar
      // now we will use bottom bar package
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.pink,
              inactiveColor: Colors.grey[300]),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_rounded),
            title: Text('Favorite'),
            inactiveColor: Colors.grey[300],
            activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            inactiveColor: Colors.grey[300],
            activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            inactiveColor: Colors.grey[300],
              activeColor: Colors.pink,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CustomeAppBar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hi salma",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Today is a good day\nto learn something new!",
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Image.network(
                              "https://avatars.githubusercontent.com/u/67196308?v=4",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //sorting
                  Sorting(),
                  const SizedBox(
                    height: 20,
                  ),
                  //category list

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),

                  //now we create model of our images and colors which we will use in our app
                  const SizedBox(
                    height: 20,
                  ),
//we can not use gridview inside column
//use shrinkwrap and physical scroll
                  const SizedBox(
                    height: 20,
                  ),
                  CategoryList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Sorting() {}

  CategoryList() {}

  CustomeAppBar() {}
}
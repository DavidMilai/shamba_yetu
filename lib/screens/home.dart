import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vegymarket/screens/edit_profile.dart';
import 'package:vegymarket/tabs/favorites_tab.dart';
import 'package:vegymarket/tabs/home_tab.dart';
import 'package:vegymarket/tabs/profile_tab.dart';
import 'package:vegymarket/tabs/sell_tab.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;
  int currentIndex = 0;
  String title;

  final tabs = [
    Center(),
    FavoriteTab(),
    SellTab(),
    Center(child: Text('this shall be a bumpy ride')),
    ProfileTab(),
  ];

  void getCurrentUser() async {
    final user = await _auth.currentUser();
    try {
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.uid);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getCurrentUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          actions: currentIndex == 4
              ? [
                  IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()));
                      })
                ]
              : [],
          elevation: currentIndex == 0 ? 0 : 10,
          title: Text(currentIndex == 0 ? '' : title)),
      body: currentIndex == 0 ? HomeTab(size: size) : tabs[currentIndex],
      bottomNavigationBar: Container(
        height: 65,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: Colors.green.withOpacity(0.38),
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                IconButton(
                    icon: SvgPicture.asset(
                      'images/home.svg',
                      color: currentIndex == 0 ? Colors.green : Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    }),
                Text(
                  'Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight:
                        currentIndex == 0 ? FontWeight.bold : FontWeight.w400,
                    color: currentIndex == 0 ? Colors.green : Colors.black54,
                  ),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                    icon: SvgPicture.asset(
                      'images/favorite.svg',
                      color: currentIndex == 1 ? Colors.green : Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                        title = 'Favorites';
                      });
                    }),
                Text(
                  'Favorites',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight:
                        currentIndex == 1 ? FontWeight.bold : FontWeight.w400,
                    color: currentIndex == 1 ? Colors.green : Colors.black54,
                  ),
                )
              ],
            ),
            IconButton(
                icon: SvgPicture.asset(
                  'images/sell.svg',
                  color: currentIndex == 2 ? Colors.green : Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                    title = 'Sell';
                  });
                }),
            Column(
              children: [
                IconButton(
                    icon: SvgPicture.asset(
                      'images/messages.svg',
                      color: currentIndex == 3 ? Colors.green : Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex = 3;
                        title = 'Messages';
                      });
                    }),
                Text(
                  'Messages',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight:
                        currentIndex == 3 ? FontWeight.bold : FontWeight.w400,
                    color: currentIndex == 3 ? Colors.green : Colors.black54,
                  ),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                    icon: SvgPicture.asset(
                      'images/profile.svg',
                      color: currentIndex == 4 ? Colors.green : Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex = 4;
                        title = 'Profile';
                      });
                    }),
                Text(
                  'Profile',
                  style: TextStyle(
                    fontWeight:
                        currentIndex == 4 ? FontWeight.bold : FontWeight.w400,
                    color: currentIndex == 4 ? Colors.green : Colors.black54,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

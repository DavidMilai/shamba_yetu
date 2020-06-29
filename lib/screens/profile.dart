import 'package:flutter/material.dart';
import 'package:vegymarket/screens/sell_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Widget> container = [
    Container(color: Colors.blueAccent),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.height * 0.35,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: size.width / 7,
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 50,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Profile Views',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('50',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 50,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Total Ads',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('4',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: size.width / 5,
                    right: size.width / 5,
                    child: Column(
                      children: [
                        Text(
                          'Harry Potter',
                          style: TextStyle(
                            fontSize: size.width / 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'email@gmail.com',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '0701181025',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Column(
                      children: <Widget>[],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'My Ads',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //edit sell messages
                ],
              ),
            ),
            Flexible(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        leading: Image.asset('images/beans.jpg'),
                        title: Text('My ad'),
                        subtitle: Text('This is my first ad.'),
                        trailing: Icon(
                          Icons.delete,
                          color: Colors.green[300],
                        ),
                        //isThreeLine: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        leading: FlutterLogo(size: 50),
                        title: Text('My ad'),
                        subtitle: Text('This is my first ad.'),
                        trailing: Icon(
                          Icons.delete,
                          color: Colors.green[300],
                        ),
                        //isThreeLine: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        leading: FlutterLogo(size: 50),
                        title: Text('My ad'),
                        subtitle: Text('This is my first ad.'),
                        trailing: Icon(
                          Icons.delete,
                          color: Colors.green[300],
                        ),
                        //isThreeLine: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        leading: FlutterLogo(size: 50),
                        title: Text('My ad'),
                        subtitle: Text('This is my first ad.'),
                        trailing: Icon(
                          Icons.delete,
                          color: Colors.green[300],
                        ),
                        //isThreeLine: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        leading: FlutterLogo(size: 50),
                        title: Text('My ad'),
                        subtitle: Text('This is my first ad.'),
                        trailing: Icon(
                          Icons.delete,
                          color: Colors.green[300],
                        ),
                        //isThreeLine: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vegymarket/pages/sell_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  List<Widget> container = [
    Container(color: Colors.blueAccent),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];
  TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(0, -0.98),
                      child: CircleAvatar(
                        radius: size.width / 7,
                        backgroundImage: AssetImage('images/profile.jpg'),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 1),
                      child: TabBar(
                          controller: tabcontroller,
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.green,
                          tabs: <Widget>[
                            Text(
                              'Ads',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Favorites',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'About You',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ]),
                    ),
                    Positioned(
                      left: 20,
                      top: 50,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Recent Views',
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
                    Align(
                      alignment: Alignment(0, 0),
                      child: Text(
                        'Harry Potter',
                        style: TextStyle(
                          fontSize: size.width / 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0.25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '0701181025',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //edit sell messages
                    Align(
                      alignment: Alignment(0, 0.6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          OutlineButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.edit,
                              color: Colors.green[400],
                            ),
                            padding: EdgeInsets.all(8),
                            shape: CircleBorder(),
                          ),
                          ButtonTheme(
                            minWidth: 150,
                            child: RaisedButton(
                              elevation: 10,
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SellPage(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  'Sell',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.message,
                              color: Colors.green[400],
                            ),
                            padding: EdgeInsets.all(8),
                            shape: CircleBorder(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabcontroller,
                  children: <Widget>[
                    ListView(
                      physics: BouncingScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 2, right: 8, left: 8, bottom: 2),
                          child: Card(
                            color: Colors.greenAccent,
                            elevation: 5,
                            child: ListTile(
                              leading: FlutterLogo(size: 50),
                              title: Text('My add'),
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
                              top: 2, right: 8, left: 8, bottom: 2),
                          child: Card(
                            elevation: 5,
                            child: ListTile(
                              leading: FlutterLogo(size: 50),
                              title: Text('My add'),
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
                              top: 2, right: 8, left: 8, bottom: 2),
                          child: Card(
                            elevation: 5,
                            child: ListTile(
                              leading: FlutterLogo(size: 50),
                              title: Text('My add'),
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
                              top: 2, right: 8, left: 8, bottom: 2),
                          child: Card(
                            elevation: 5,
                            child: ListTile(
                              leading: FlutterLogo(size: 50),
                              title: Text('My add'),
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
                              top: 2, right: 8, left: 8, bottom: 2),
                          child: Card(
                            elevation: 5,
                            child: ListTile(
                              leading: FlutterLogo(size: 50),
                              title: Text('My add'),
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
                    Container(
                      height: 5,
                      color: Colors.green[100],
                    ),
                    Container(height: 5, color: Colors.yellow),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

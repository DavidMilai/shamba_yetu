import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegymarket/pages/sell_page.dart';

class TileWithAction extends StatefulWidget {
  @override
  _TileWithActionState createState() => _TileWithActionState();
}

class _TileWithActionState extends State<TileWithAction>
    with TickerProviderStateMixin {
  List<Widget> container = [
    Container(color: Colors.blueAccent),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];
  TabController tabcontroller;
  userBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.36,
                        top: -30,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(55.0),
                              ),
                              color: Colors.white),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/profile.jpg'),
                          ),
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
                        alignment: Alignment(0, -0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Harry Potter',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment(0, 0.15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '0701181025',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment(0, 0.5),
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
                                        fontSize: 20, color: Colors.white),
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
          );
        });
  }

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: OutlineButton(
        padding: EdgeInsets.all(8),
        shape: CircleBorder(),
        child: Icon(
          Icons.accessibility,
          color: Colors.green,
          size: 40,
        ),
        onPressed: () {
          userBottomSheet(context);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vegymarket/screens/sell_page.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
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
                          'Ad Views',
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
                          '07012345678',
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
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.green[300],
                          ),
                          onPressed: () {
                            _showDialog();
                          },
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

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(
            'Wait',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          content: new Text("Are you sure you want to delete (title)?"),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              child: new Text('YES'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(width: 10),
            FlatButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              child: new Text('NO'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

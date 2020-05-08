import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'results.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vegy Marget'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                  child: Text(
                'Drawer Header',
                style: TextStyle(
                    color: Colors.limeAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/vegies.jpg'),
                  fit: BoxFit.fitWidth,
                ),
                color: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.favorite),
                  title: Text('Favorites'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.accessibility),
                  title: Text('Profile'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Results()));
                print('Milai');
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "What are you looking for",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  leading: FlutterLogo(),
                  title: Text('One-line with leading widget'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

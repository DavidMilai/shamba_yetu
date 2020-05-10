import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'results.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/listTileWithAction.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 150.0,
              floating: true,
              //pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    'images/vegies.jpg',
                    fit: BoxFit.cover,
                  )),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(60),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text("Shamba Yetu",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30.0,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                child: Text(
                                  'what are you looking for?',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(width: 40),
                              Container(
                                child: IconButton(
                                    icon: Icon(
                                      Icons.settings,
                                      color: Colors.green[400],
                                    ),
                                    onPressed: () {}),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
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
            Theme(
                data:
                    Theme.of(context).copyWith(canvasColor: Colors.transparent),
                child: TileWithAction()),
          ],
        ),
      ),
    );
  }
}

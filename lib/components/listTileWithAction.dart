import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileWithAction extends StatefulWidget {
  @override
  _TileWithActionState createState() => _TileWithActionState();
}

class _TileWithActionState extends State<TileWithAction> {
  userBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
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
                      backgroundImage: AssetImage('images/vegies.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 40,
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
                  top: 40,
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
                  alignment: Alignment(0, -0.15),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Edit Profile', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Align(
                  alignment: Alignment(0, -0.45),
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
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          onTap: () {
            userBottomSheet(context);
          },
          leading: Icon(Icons.accessibility),
          title: Text('Profile'),
        ),
      ),
    );
  }
}

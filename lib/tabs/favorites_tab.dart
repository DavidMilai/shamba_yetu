import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteTab extends StatefulWidget {
  @override
  _FavoriteTabState createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: size.height * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.green.withOpacity(0.39),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/beans.jpg'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My ad',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Location\nDate'),
                          ]),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        IconButton(
                            icon: tapped
                                ? SvgPicture.asset('images/heart.svg')
                                : SvgPicture.asset('images/heart-red.svg'),
                            onPressed: () {
                              setState(() {
                                tapped = !tapped;
                                _showDialog();
                              });
                            }),
                        Spacer(),
                        Text(
                          'Price',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: size.height * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.green.withOpacity(0.39),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/mangoes.jpg'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My ad',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Location\nDate'),
                          ]),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        IconButton(
                            icon: tapped
                                ? SvgPicture.asset('images/heart.svg')
                                : SvgPicture.asset('images/heart-red.svg'),
                            onPressed: () {
                              setState(() {
                                tapped = !tapped;
                                _showDialog();
                              });
                            }),
                        Spacer(),
                        Text(
                          'Price',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: size.height * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.green.withOpacity(0.39),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/carrot.jpg'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My ad',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Location\nDate'),
                          ]),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        IconButton(
                            icon: tapped
                                ? SvgPicture.asset('images/heart.svg')
                                : SvgPicture.asset('images/heart-red.svg'),
                            onPressed: () {
                              setState(() {
                                tapped = !tapped;
                                _showDialog();
                              });
                            }),
                        Spacer(),
                        Text(
                          'Price',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
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
          content: new Text(
              "Are you sure you want to remove (title) from favorites?"),
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

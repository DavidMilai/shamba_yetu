import 'package:flutter/material.dart';
import 'package:vegymarket/screens/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:vegymarket/screens/product_screen.dart';
import 'package:vegymarket/tabs/profile_tab.dart';
import 'package:vegymarket/widgets/adCard.dart';
import 'package:vegymarket/widgets/featuredCard.dart';

class HomeTab extends StatelessWidget {
  HomeTab({this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: size.height * 0.15,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.15 - 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
                      'Hi what are you looking for?\n Username',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Colors.green.withOpacity(0.23),
                          ),
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(
                          color: Colors.green.withOpacity(0.5),
                        ),
                      ),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  child: Stack(
                    children: [
                      Text(
                        'Recent',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 7,
                            color: Colors.green.withOpacity(0.3),
                          ))
                    ],
                  ),
                ),
                Spacer(),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductScreen()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.green,
                  child: Text(
                    'More',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AdCard(
                  size: size,
                  imageLocation: 'images/eggs.jpg',
                  title: 'Eggs',
                  location: 'Langata',
                  price: 10,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  imageLocation: 'images/eggs.jpg',
                                )));
                  },
                ),
                AdCard(
                  size: size,
                  imageLocation: 'images/tomatoes.jpg',
                  title: 'Tomatoes',
                  location: 'Karen',
                  price: 120,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  imageLocation: 'images/tomatoes.jpg',
                                )));
                  },
                ),
                AdCard(
                  size: size,
                  imageLocation: 'images/mangoes.jpg',
                  title: 'Mangoes',
                  location: 'Huruma',
                  price: 120,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  imageLocation: 'images/mangoes.jpg',
                                )));
                  },
                ),
                AdCard(
                  size: size,
                  imageLocation: 'images/vegies.jpg',
                  title: 'Everything',
                  location: 'Runda',
                  price: 120,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  imageLocation: 'images/vegies.jpg',
                                )));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  child: Stack(
                    children: [
                      Text(
                        'Featured',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 7,
                            color: Colors.green.withOpacity(0.3),
                          ))
                    ],
                  ),
                ),
                Spacer(),
                FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.green,
                  child: Text(
                    'More',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedCard(
                  size: size,
                  imageLocation: 'images/carrot.jpg',
                  title: 'Carrots',
                  location: 'Langata',
                  price: 10,
                ),
                FeaturedCard(
                  size: size,
                  imageLocation: 'images/beans.jpg',
                  title: 'Clean Beans',
                  location: 'Ngong',
                  price: 150,
                ),
                FeaturedCard(
                  size: size,
                  imageLocation: 'images/eggs.jpg',
                  title: 'Eggs',
                  location: 'Langata',
                  price: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(3.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                leading: FlutterLogo(),
                title: Text('One-line with leading widget'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileTab(),
                    ),
                  );
                },
                leading: FlutterLogo(),
                title: Text('Profile'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

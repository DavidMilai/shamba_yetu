import 'package:flutter/material.dart';
import 'package:vegymarket/models/product.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Recent',
            style: TextStyle(letterSpacing: 1),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(16)),
                    child: Image.asset(products[0].image)),
              ],
            ),
          ),
        ));
  }
}

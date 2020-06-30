import 'package:flutter/material.dart';

class SellTab extends StatefulWidget {
  @override
  _SellTabState createState() => _SellTabState();
}

class _SellTabState extends State<SellTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              child: Row(
            children: [
              Container(
                height: size.height * 0.3,
                color: Colors.yellow,
                child: Text('Align.center'),
              )
            ],
          )),
          Container(
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Text('Name of Product'),
                  Text('Location'),
                  Text('Amount'),
                  Text('Phone number'),
                  Text('Description'),
                  Text('Should capture date'),
                ],
              ))
        ],
      ),
    );
  }
}

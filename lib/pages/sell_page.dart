import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class SellPage extends StatefulWidget {
  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sell something'),
      ),
      body: Column(
        children: <Widget>[
          Text('data'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  bool isSwitched = true;
  GoogleMapController mapController;
  LatLng center = LatLng(1.3197, 36.8229);

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search results'),
        actions: <Widget>[
          Center(
            child: Text(isSwitched ? 'List' : 'Map'),
          ),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ],
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
                  leading: FlutterLogo(),
                  title: Text('One-line with leading widget'),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          TextField(),
          isSwitched
              ? ListView(
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
                  ],
                )
              : Stack(
                  children: <Widget>[
                    GoogleMap(
                      onMapCreated: onMapCreated,
                      mapType: MapType.normal,
                      initialCameraPosition: CameraPosition(
                        target: center,
                        zoom: 14,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: IconButton(
                        icon: Icon(
                          Icons.my_location,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}

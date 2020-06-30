import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({@required this.imageLocation});
  final String imageLocation;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: size.height * 0.75,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: size.height * 0.04),
                              padding: EdgeInsets.all(8),
                              height: 62,
                              width: 62,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 15),
                                      blurRadius: 22,
                                      color: Colors.green.withOpacity(0.39),
                                    ),
                                    BoxShadow(
                                      offset: Offset(-15, -15),
                                      blurRadius: 20,
                                      color: Colors.white,
                                    )
                                  ]),
                              child: SvgPicture.asset(
                                'images/share.svg',
                                color: Colors.green,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  tapped = !tapped;
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: size.height * 0.04),
                                  padding: EdgeInsets.all(8),
                                  height: 62,
                                  width: 62,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 15),
                                          blurRadius: 22,
                                          color: Colors.green.withOpacity(0.39),
                                        ),
                                        BoxShadow(
                                          offset: Offset(-15, -15),
                                          blurRadius: 20,
                                          color: Colors.white,
                                        )
                                      ]),
                                  child: tapped
                                      ? SvgPicture.asset('images/heart-red.svg')
                                      : SvgPicture.asset('images/heart.svg',
                                          color: Colors.green)),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: size.height * 0.04),
                              padding: EdgeInsets.all(8),
                              height: 62,
                              width: 62,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 15),
                                      blurRadius: 22,
                                      color: Colors.green.withOpacity(0.39),
                                    ),
                                    BoxShadow(
                                      offset: Offset(-15, -15),
                                      blurRadius: 20,
                                      color: Colors.white,
                                    )
                                  ]),
                              child: SvgPicture.asset(
                                'images/chat.svg',
                                color: Colors.green,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: size.height * 0.03),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 15),
                                        blurRadius: 22,
                                        color: Colors.green.withOpacity(0.39),
                                      ),
                                      BoxShadow(
                                        offset: Offset(-15, -15),
                                        blurRadius: 20,
                                        color: Colors.white,
                                      )
                                    ]),
                                child: Text(
                                  '20 Views',
                                  style: TextStyle(color: Colors.green),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.7,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(63),
                            bottomLeft: Radius.circular(63),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            image: AssetImage(widget.imageLocation),
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 60,
                                color: Colors.green.withOpacity(0.29))
                          ]),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Name of product\n',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Location',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
                  ),
                  Spacer(),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: '200 KSH\n',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: 'Date',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 84,
                  width: size.width / 3,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      'Call now',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Description of your item shall go here hoping it\'ll fit in this little space because I just dont have alot of room ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

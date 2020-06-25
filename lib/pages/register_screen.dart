import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ListView(
                children: [
                  Align(
                      alignment: Alignment(-0.98, 0),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          })),
                  SizedBox(height: size.width / 10),
                  Center(
                    child: Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: size.width / 8),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'First Name',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                          ),
                        ),
                      )
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          size: 30,
                        ),
                        labelText: 'Phone number'),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          size: 30,
                        ),
                        labelText: 'Email'),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                        ),
                        labelText: 'Password'),
                  ),
                  SizedBox(height: 15),
                  MaterialButton(
                      color: Colors.amber,
                      elevation: 10,
                      height: size.width / 10,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: 18),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/home');
                      }),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 59,
                color: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 60,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.quadraticBezierTo(size.width / 2, size.height, size.width, 0);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

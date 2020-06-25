import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    alignment: Alignment(0.9, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: size.width / 7),
                  Center(
                    child: Text(
                      'Log in',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: size.width / 5),
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
                  SizedBox(height: 25),
                  MaterialButton(
                      color: Colors.amber,
                      minWidth: 250,
                      elevation: 10,
                      height: size.width / 10,
                      child: Text(
                        'Log in',
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

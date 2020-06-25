import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:vegymarket/pages/home.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  TextEditingController firstNameInputController;
  TextEditingController lastNameInputController;
  TextEditingController emailInputController;
  TextEditingController passwordInputController;
  bool isLoading = false;

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else if (regex == null) {
      return 'Please enter an email address';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

  @override
  void initState() {
    firstNameInputController = new TextEditingController();
    lastNameInputController = new TextEditingController();
    emailInputController = new TextEditingController();
    passwordInputController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: SafeArea(
          child: Form(
            key: _registerFormKey,
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
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: size.width / 8),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'First Name',
                              ),
                              controller: firstNameInputController,
                              validator: (value) {
                                if (value.length < 3) {
                                  return "Please enter a valid first name.";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Last Name',
                                ),
                                validator: (value) {
                                  if (value.length < 3) {
                                    return "Please enter a valid last name.";
                                  } else {
                                    return null;
                                  }
                                }),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            size: 30,
                          ),
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: emailValidator,
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 30,
                          ),
                          labelText: 'Password',
                        ),
                        validator: pwdValidator,
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
                          onPressed: () async {
                            if (_registerFormKey.currentState.validate()) {
                              try {
                                final newUser =
                                    await _auth.createUserWithEmailAndPassword(
                                        email: emailInputController.text,
                                        password: passwordInputController.text);
                                if (newUser != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                }
                              } catch (e) {
                                print(e);
                              }
                            }

                            // Navigator.popAndPushNamed(context, '/home');
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

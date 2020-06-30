import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile'),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.2,
            child: Stack(
              children: [
                SizedBox(height: 10),
                Container(height: size.height * 0.065, color: Colors.green),
                Row(
                  children: [
                    Flexible(
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          height: size.height * 0.05,
                          color: Colors.green,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 22,
                              color: Colors.green.withOpacity(0.59),
                            ),
                          ]),
                      child: CircleAvatar(
                        radius: size.width / 7,
                        backgroundImage: AssetImage('images/profile.jpg'),
                      ),
                    ),
                    Flexible(
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          height: size.height * 0.05,
                          color: Colors.green,
                          width: double.infinity,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'First name'),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'last name'),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'email@gmail.com'),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: '07012345678'),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      color: Colors.red[400],
                      onPressed: () {},
                      child: Text('Cancel'),
                    ),
                    MaterialButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text('Submit'),
                    ),
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Delete account',
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final roundingHeight = size.height * 2 / 5;
    final filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);
    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);
    final path = Path();
    path.addRect(filledRectangle);
    path.arcTo(roundingRectangle, 3.142, -3.142, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

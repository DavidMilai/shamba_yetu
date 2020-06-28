import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  FeaturedCard(
      {this.size,
      this.imageLocation,
      this.onTap,
      this.title,
      this.location,
      this.price});
  final Size size;
  final String imageLocation, title, location;
  final int price;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 8, top: 8, bottom: 8),
        width: size.width * 0.6,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(imageLocation),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 12),
                      blurRadius: 50,
                      color: Colors.green.withOpacity(0.3),
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text(
                        location,
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Flexible(
                        child: Text(
                          '$price KSH',
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

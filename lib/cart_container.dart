import 'package:flutter/material.dart';

class CartContainer extends StatelessWidget {
  final AssetImage photo;
  final String price;
  const CartContainer({super.key, required this.photo, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 350,
          height: 120,
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(image: photo, fit: BoxFit.contain)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sugar free gold",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff090F47),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "bottle of 500 pellets",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff090F47).withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      price,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff090F47),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 90, top: 10),
                      child: Icon(Icons.cancel_outlined)),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 70,
                    height: 40,
                    margin: EdgeInsets.only(left: 45, bottom: 0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("group3642.png"),
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

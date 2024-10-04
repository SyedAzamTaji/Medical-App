import 'package:flutter/material.dart';
import 'package:quickmedical/Home.dart';

class OrderPlace extends StatelessWidget {
  const OrderPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 194, 167, 242),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 198, 156, 240),
          title: Container(
            margin: EdgeInsets.only(left: 50),
            child: Text(
              'Order Status',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
                'Your order has been successful!\nThank you.\n Press OK To Go Back Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 300,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4157FF)),
                  child: Container(
                    width: 260,
                    height: 44,
                    child: Row(
                      children: [
                        SizedBox(width: 120),
                        Text(
                          "OK",
                          style: TextStyle(color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        )));
  }
}

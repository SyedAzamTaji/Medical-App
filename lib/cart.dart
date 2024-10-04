import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quickmedical/cart_container.dart';
import 'package:quickmedical/order_place.dart';
import 'package:quickmedical/product_detail.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Container(
          height: 812,
          width: 468,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 17),
                      child: Text(
                        "Your cart",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        "2 Items in your cart",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff090F47).withOpacity(0.45)),
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        left: 100,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color(0xff4157FF),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: Text("Add more",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xff4157FF)))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: CartContainer(
                      photo: AssetImage("MaskGroup.png"), price: "Rs.25")),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 350,
                height: 1,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 230, 227, 227)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: CartContainer(
                    photo: AssetImage("MaskGroup1.png"), price: "Rs.18"),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Payment Summary",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff090F47)),
                  )),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Order Total",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff090F4773).withOpacity(0.45)),
                    ),
                    SizedBox(
                      width: 210,
                    ),
                    Text("228.80",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff090F47))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Items Discount",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff090F4773).withOpacity(0.45))),
                    SizedBox(
                      width: 190,
                    ),
                    Text("-28.80",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff090F47))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Coupon Discount",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff090F4773).withOpacity(0.45))),
                    SizedBox(
                      width: 180,
                    ),
                    Text("-15.80",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff090F47))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Shipping",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff090F4773).withOpacity(0.45))),
                    SizedBox(
                      width: 245,
                    ),
                    Text("Free",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff090F47))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 350,
                height: 1,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 230, 227, 227)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Total",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff090F47))),
                    SizedBox(
                      width: 220,
                    ),
                    Text("Rs.185.00",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff090F47))),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderPlace()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4157FF)),
                    child: Container(
                      width: 260,
                      height: 44,
                      child: Row(
                        children: [
                          SizedBox(width: 90),
                          Text(
                            "Place Order",
                            style: TextStyle(color: Color(0xffFFFFFF)),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:muktidham/HomePage.dart';


class CouponPage extends StatefulWidget {
  @override
  _CouponPageState createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Container(
          height: height /2,
          width: width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "    Your Coupon number is\n",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepPurple,
                          )),
                      TextSpan(
                          text: "          11983\n\n\n",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepPurple,
                          )),
                      TextSpan(
                          text: "    Time allotted to you is\n",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepPurple,
                          )),
                      TextSpan(
                          text: " 2:00am to 4:00pm\n",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepPurple,
                          )),
                    ],
                    ),

                  ),
                  FlatButton(onPressed:
                      (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return HomePage();
                        }));
                  },
                      color: Colors.deepPurpleAccent,
                      child: Text("Home",style: TextStyle(color: Colors.white),)
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
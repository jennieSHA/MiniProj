import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muktidham/CouponPage.dart';
class form extends StatefulWidget {
  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Person Details"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(

              children: [
                TextFormField(

                  decoration: InputDecoration(
                      hintText: "Name"
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Gender"
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Address"
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Cause of death"
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "time of death"
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Date of death"
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Relation with death person"
                  ),
                ),
SizedBox(
  height: 20,
),
                FlatButton(onPressed:
                    (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                    return CouponPage();
                    }));
                  },
color: Colors.deepPurpleAccent,
                 child: Text("Submit",style: TextStyle(color: Colors.white),)
                ),
                Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

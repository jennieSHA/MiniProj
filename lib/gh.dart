import 'package:flutter/material.dart';
import 'package:muktidham/form.dart';
class cremation extends StatefulWidget {
  @override
  _cremationState createState() => _cremationState();
}

class _cremationState extends State<cremation> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(" ",style: TextStyle(fontSize: 19),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
        RichText(
        text: TextSpan(children: [
            TextSpan(
            text: "    How would you like to bid \n",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.deepPurple,
            )),
        TextSpan(
            text: "            adieu to them?",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.deepPurple,
            )),
            ],
        ),
        ),

            SizedBox(
              height: height / 15,
            ),
            RaisedButton(
              padding: EdgeInsets.all(height / 30),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return form();}));
              },
              color: Colors.deepPurpleAccent,
              child: Text("Electric Cremation ",style: TextStyle(color: Colors.white),),
            ),

            SizedBox(
              height: height / 15,
            ),
            RaisedButton(
              padding: EdgeInsets.all(height / 30),
              onPressed: (){
              },
              color: Colors.deepPurpleAccent,
              child: Text("General Cremation",style: TextStyle(color: Colors.white),),
            )

          ],
        ),
      ),
    );

  }
}

import 'package:flutter/material.dart';
import 'package:muktidham/gh.dart';
import 'package:muktidham/AppInfo.dart';

 class HomePage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.deepPurpleAccent,
         title: Text("Muktidham"),
       ),
       backgroundColor: Colors.white,
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             RaisedButton(
               padding: EdgeInsets.all(20),
               onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return cremation();}));
               },
               color: Colors.deepPurpleAccent,
               child: Text("Crematoria",style: TextStyle(color: Colors.white),),
             ),

             SizedBox(
               height: 36,
             ),
             RaisedButton(
               padding: EdgeInsets.all(20),
               onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return info();}));
               },
               color: Colors.deepPurpleAccent,
               child: Text("About Us",style: TextStyle(color: Colors.white),),
             )

           ],
         ),
       ),
     );
   }
 }

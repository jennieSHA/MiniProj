import 'package:flutter/material.dart';
import 'package:muktidham/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

SharedPreferences localStorage;

TextEditingController emailController = new TextEditingController();
TextEditingController pwdController = new TextEditingController();

class MyApp extends StatelessWidget {
  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent,
     ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    save() async {
      await MyApp.init();
      localStorage.setString('email', emailController.text.toString());
      localStorage.setString('password', pwdController.text.toString());
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return HomePage();
          }));
    }
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Welcome to\n",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                           color: Colors.deepPurple,
                           )),
                    TextSpan(
                        text: "Muktidham\n",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                          color: Colors.deepPurple,
                            )),
                    TextSpan(
                        text: "please sign in ",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          color: Colors.deepPurpleAccent,
                            )),
                    TextSpan(
                        text: "to continue",
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.w700,
                           ))
                  ]),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: height / 16),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Email Id:",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        controller: emailController,
                        obscureText: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Color(0xfff3f3f4),
                            filled: true))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Password :",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        controller: pwdController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Color(0xfff3f3f4),
                            filled: true))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              RaisedButton(
                onPressed: save,
                child: Text('Login'),
              ),

              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              if (localStorage != null)
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("User Logged in!!! ->  Email Id: ${localStorage.get('email')}  Password: ${localStorage.get('password')}",style: TextStyle(fontSize: 20),),
                ),
            ],
          ),
        ),
      ),
    );

  }

}



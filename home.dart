import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

testapp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.blueAccent);
  FlutterStatusbarcolor.setNavigationBarColor(Colors.green);
  myprint() {
    print("Hi this is satyanarayan");
    Fluttertoast.showToast(
        msg: "You are Awesome Flutter App Developer",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.blue,
        fontSize: 16.0);
  }
  var mylogo = Image.network('https://github.com/SatyaNM95/Flutter_class/blob/master/logo.png?raw=true');
  mylike() {
    print('Your profile is liked ');
    Fluttertoast.showToast(
        msg: "profile has liked ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.lightBlue,
        textColor: Colors.white,
        fontSize: 16.0);
  }
  mysearch(){
     print("Search Your Query Here");
    Fluttertoast.showToast(
        msg: "Search Your Query Here ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.lightGreen,
        textColor: Colors.white,
        fontSize: 16.0);

  }

  mylogin() {
    print("Enter Your username and password");
    Fluttertoast.showToast(
        msg: "Enter Your username and Password",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.lightBlue,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  myphoto() {
    Fluttertoast.showToast(
        msg: "Upload Your Image",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.lightBlue,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.lightBlue.shade200,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.red,
              width: 3,
            ),
          ),

          margin: EdgeInsets.all(50),
          //padding: EdgeInsets.all(30),
          //padding: EdgeInsets.all(left:10),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          //color: Colors.amber.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Satyanarayan Meena',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text( '  satyanarayan@lw.com',
                      style: TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                ),
                  ),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: mylike,
          onDoubleTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/SatyaNM95/Flutter_class/master/satya%20image.jpeg'),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.lightGreen,
                width: 3,
              ),
            ),
            width: 100,
            height: 110,
            //margin: EdgeInsets.all(40),
            //child: Text('hello'),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        backgroundColor: Colors.blue.shade800,
        leading: mylogo,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search) , onPressed: mysearch),
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: myphoto),
          IconButton(icon: Icon(Icons.account_circle), onPressed: mylogin),
          
        ],
      ),
      body: mybody,
    ),
  );
}

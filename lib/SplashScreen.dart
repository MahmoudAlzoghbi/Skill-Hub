import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skill_hub_course/wrapper/wrapper.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    startTime();
  }

  startTime() async{
    var duration = new Duration(seconds: 50);
    return new Timer(duration, route());
  }

  route(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome()));
  }





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/splash.PNG"),
                  fit:BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),

            /*FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(image: AssetImage('images/Enter Page.jpg'),),
              ),

            ),*/
          ),
      ),
    );
  }

  /*route(){
    Navigator.of(context).push(MaterialPageRoute (builder: (context)=> WelcomePage()));
  }

  startTime() async{
    Timer (Duration(seconds: 10) , (){
      setState((){
        Navigator.pushNamed(context,new MaterialPageRoute(builder: (_)=> new WelcomePage()));
      });
    });
  }*/
}


/*
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  initScreen(BuildContext context){
    return Scaffold(
      body: Image(
        image: AssetImage('images/Enter Page.jpg'),
      ),
    );
  }

  route(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
    );
  }

  startTime() async{
    var duration = new Duration(seconds: 10);
    return new Timer(duration, route());
  }
}*/

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          leading: Icon(
            Icons.book,
            size: 30.0,
            color: Colors.white,
          ),
          backgroundColor: Colors.teal.shade900,
          title: Text('Skill Hub Courses' , style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'
          ),
          ),
        ),*/
        body: Center(
          child: Column(
            children:[
              SizedBox(
                height: 50.0,
          ),
              Image(
                image: AssetImage('images/skillhubLogo.jpg'),
                width: 400.0,
                height: 400.0,
          ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                margin: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25.0,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.teal.shade900,
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Sign in ' ,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Piazzolla',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),

                      ),
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Wrapper() ));
                      },),
                    SizedBox(
                      width: 40.0,
                      height: 90.0,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.teal.shade900,
                      padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
                      child: Text(
                        'Sign up ' ,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Piazzolla',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){

                      },),
                  ],
                  ),
                ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:skill_hub_course/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthServices _authServices = new AuthServices();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign in to Skill Hub',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
            ),
          ),
          backgroundColor: Colors.teal,
          elevation: 0.0,
        ),
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('sing in anon'),
                onPressed: () async{
                    dynamic result = await _authServices.SignInAnon();

                    if (result == null){
                      print('something gonna be wrong');
                    }else {
                      print('Signed in successfully');
                      print (result);
                    }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

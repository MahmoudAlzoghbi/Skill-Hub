import 'package:firebase_auth/firebase_auth.dart';

class AuthServices{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon

  Future SignInAnon() async {

    try {
      AuthResult result = await _auth.signInAnonymously();

      FirebaseUser user = result.user;

      return user;
    }catch (e) {
      // TODO
      print(e.toString());
      return null;
    }
  }

  // sign in with mail and password

  // register with email and password

  // sign out

}
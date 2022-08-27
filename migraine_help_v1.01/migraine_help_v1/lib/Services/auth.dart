// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:migraine_help_v1/Services/database.dart';
import '../Models/myuser.dart';
import 'package:migraine_help_v1/Screens/Authentication/sign_up.dart';

class Authservice {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser
  // create MyUser object based on User
  MyUser? _userFromFirebaseUser(User? user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<MyUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in email password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      // create a new document for the user with the uid

      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      await DatabaseService(uid: user!.uid)
          .updateUserData('0', 'username', 100);

      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign out

  Future signOut() async {
    try {
      return await FirebaseAuth.instance.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}

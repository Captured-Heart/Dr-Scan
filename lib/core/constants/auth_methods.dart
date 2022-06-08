// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:drscanner/core/app_export.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Users {
  String userId;

  Users({required this.userId});
}

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Dialogs dialogs = Dialogs();
  void _showSnackBar(String error, BuildContext context) {
    final _snackBar = SnackBar(
      duration: Duration(seconds: 2),
      backgroundColor: Color.fromARGB(255, 40, 41, 54),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.error, color: Colors.red),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              error,
              // maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }

//USER FROM FIREBASE
  Users _userFromFirebase(User user) {
    // return user != null ? Users(userId: user.uid) : null;
    return Users(userId: user.uid);
  }

  // GET UID
  Future<String> getCurrentUID() async {
    // return (await _auth.currentUser()).uid;
    return _auth.currentUser!.uid;
  }

  // GET CURRENT USER
  Future getCurrentUser() async {
    return _auth.currentUser!;
  }

//SIGN IN WITH EMAIL AND PASSWORD
  Future signInWithEmailAndPassword(
      String? email, String password, BuildContext context) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email!, password: password);
      User? firebaseUser = result.user;
      if (firebaseUser!.emailVerified)
        return Get.toNamed(AppRoutes.patientInformationPageScreen);

      // return firebaseUser.uid;

      return _userFromFirebase(firebaseUser);
    } on FirebaseAuthException catch (e) {
      return _showSnackBar(e.message.toString(), context);
    }
  }

//SIGNUP WITH EMAIL AND PASSWORD
  Future signUpWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;
      // await DataBaseService(uid: firebaseUser.uid).updateUserDetails(name, email, phone, address, gender, dob);
      await firebaseUser!.sendEmailVerification().whenComplete(
            () => dialogs.popUntilDialog(
              context: context,
              contentText:
                  'You have successfully sign up on Dr Scan, A verification link has been sent to your email(inbox/spam) to confirm your address ',
              titleText: 'SUCCESS',
              // pageName: AppRoutes.loginPageScreen,
            ),
          );

      return _userFromFirebase(firebaseUser);
    } on FirebaseAuthException catch (e) {
      return _showSnackBar(e.message.toString(), context);
      // print(e.toString());
    }
  }

//RESET PASSWORD
  Future resetPassword(String email) async {
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }

//SIGN OUT
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}

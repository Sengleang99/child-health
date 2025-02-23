
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  signUpUser({
    required String name,
    required String email,
    required String password}) async {
    String res = "some error Occured";
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      await _firestore.collection("user").doc(credential.user!.uid).set({
        "name": name,
        "email": email,
        "uid": credential.user!.uid,
      });
      res = "successfully";
    } catch (error){
      print(error.toString());
    }
    return res;
  }
}

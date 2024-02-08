import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> SignUpUser({
    required String userName,
    required String email,
    required String password,
    required String bio,
    required Uint8List profilePic,
  }) async {
    String res = "Unknown error occured";
    try {
      //register user
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      //save user data to firebase

      await _firestore.collection("users").doc(cred.user!.uid).set({
        "userName": userName,
        "uid": cred.user!.uid,
        "bio": bio,
        "email": email,
        "followers": [],
        "following": [],
      });
      res = "Success";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}

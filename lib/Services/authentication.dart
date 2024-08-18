import 'package:bentlos/Pages/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bentlos/Models/usermodel.dart';
// mport 'package:firebase_core/firebase_core.dart';

class AuthServices {
  // for storing data in firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // for the authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;
// for signing up   `
  Future<String> signUpUser({
    required String email,
    required String password,
    required String name,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty || name.isNotEmpty || password.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        await _firestore.collection("users").doc(credential.user!.uid).set(
              UserModel(
                uid: credential.user!.uid,
                name: name,
                email: email,
                password: password,
                bio: 'Empty Bio',
              ).toMap(),
            );
        await _firestore
            .collection("userProfiles")
            .doc(credential.user!.uid)
            .set({});
        res = 'Success';
      } else {
        res = 'please enter all the fields';
      }
    } catch (e) {
      // ignore: avoid_print
      return e.toString();
    }
    return res;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "Success";
      } else {
        res = 'please enter all the fields';
      }
    } catch (e) {
      // ignore: avoid_print
      return e.toString();
    }
    return res;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}

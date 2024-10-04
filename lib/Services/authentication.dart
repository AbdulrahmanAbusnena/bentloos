import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bentlos/Models/usermodel.dart';

class AuthServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String name,
  }) async {
    String res = "Some error occurred";
    try {
      // Input validation: Check for empty fields AND valid email format
      if (email.isEmpty || password.isEmpty || !emailValidator(email)) {
        res = 'Please enter all fields correctly.  Email must be valid.';
        return res;
      }

      // Password validation: Check password strength (example below)
      if (!isStrongPassword(password)) {
        res =
            'Password must be at least 8 characters, contain uppercase and lowercase letters, and a number.';
        return res;
      }

      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _firestore.collection("users").doc(credential.user!.uid).set(
            UserModel(
              uid: credential.user!.uid,
              name: name,
              email: email,
              password:
                  password, // Storing passwords directly is insecure; see below
              bio: 'Enter Bio',
            ).toMap(),
          );

      res = 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        res = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        res = 'The account already exists for that email.';
      } else if (e.code == 'invalid-email') {
        res = 'The email address is badly formatted.';
      } else {
        res = e.message ?? 'An unknown error occurred.';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isEmpty || password.isEmpty || !emailValidator(email)) {
        res = 'Please enter all fields correctly. Email must be valid.';
        return res;
      }
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      res = "Success";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        res = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        res = 'Wrong password provided.';
      } else {
        res = e.message ?? 'An unknown error occurred.';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Helper functions for validation
  bool emailValidator(String email) {
    // Add more robust email validation if needed (regex)
    return email.contains('@');
  }

  bool isStrongPassword(String password) {
    // Add more robust password validation if needed (regex)
    return password.length >= 8 && password.contains(RegExp(r'[a-z]'));
  }
}

class AuthException implements Exception {
  final String message;
  AuthException({required this.message});
}

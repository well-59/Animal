import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
//signInWithGoogle
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    // scopes: <String>["email"]
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

//singIn
  Future<void> doLogin(String account, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: account, password: password);

      String userEmail = credential.user?.email ?? "";
      String userIdToken = await credential.user?.getIdToken() ?? "";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        EasyLoading.showToast('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        EasyLoading.showToast('Wrong password provided for that user.');
      }
    }
  }

//signOut
  signOut() {
    FirebaseAuth.instance.signOut();
  }

//註冊
  Future<UserCredential?> doRegister(
      String emailAddress, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
      }
    } catch (e) {
      debugPrint('$e');
    }
    return null;
  }
}

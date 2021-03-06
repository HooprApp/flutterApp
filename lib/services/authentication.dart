import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:hoopr/services/db.dart';
import 'package:hoopr/serviceLocator.dart';

abstract class BaseAuth {
  Future<String> signIn(String email, String password);

  Future<String> signUp(String email, String password, String firstName,
      String lastName, String username);

  Future<FirebaseUser> getCurrentUser();

  Future<void> sendPasswordReset(String email);

  Future<void> sendEmailVerification();

  Future<void> signOut();

  Future<bool> isEmailVerified();
}

class Auth implements BaseAuth {
  static final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  final DatabaseService databaseService = locator<DatabaseService>();

  @override
  Future<String> signIn(String email, String password) async {
    AuthResult result = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    if (user.isEmailVerified) return user.uid;
    return null;
  }

  @override
  Future<String> signUp(String email, String password, String firstName,
      String lastName, String username) async {
    AuthResult result = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;

    //create new document for the user with uid
    databaseService.createUser(user.uid, firstName, lastName, username, 0);

    return user.uid;
  }

  @override
  Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser user = await firebaseAuth.currentUser();
    return user;
  }

  static Future<String> getCurrentUserId() async {
    FirebaseUser user = await firebaseAuth.currentUser();
    return user.uid;
  }

  @override
  Future<void> signOut() async {
    return firebaseAuth.signOut();
  }

  @override
  Future<void> sendEmailVerification() async {
    FirebaseUser user = await firebaseAuth.currentUser();
    user.sendEmailVerification();
  }

  @override
  Future<void> sendPasswordReset(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<bool> isEmailVerified() async {
    FirebaseUser user = await firebaseAuth.currentUser();
    return user != null && user.isEmailVerified;
  }
}

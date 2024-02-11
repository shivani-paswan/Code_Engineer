import 'dart:async';

import 'package:code_engineer/BottomNavigationScreens/BottomNavigationHandler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:code_engineer/auth/LoginScreen.dart';

class SplashServices {
  isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user != null) {
      Timer(
          Duration(seconds: 5),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage())));
      return;
    } else {
      Timer(
          Duration(seconds: 5),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen())));
    }
  }
}

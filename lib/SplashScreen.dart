import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:code_engineer/FirebaseServices/spalsh_services.dart';
import 'package:code_engineer/BottomNavigationScreens/BottomNavigationHandler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:code_engineer/FirebaseServices/spalsh_services.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.9),
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Colors.black54,
            )),
        // body: AnimatedSplashScreen(
        //   centered: true,
        //     curve :Curves.easeInCubic,
        //     animationDuration:Duration(seconds: 1),
        //     splash: Image.asset("assets/images/programming.png"),
        //     // splashTransition: SplashTransition.scaleTransition,
        //     splashTransition: SplashTransition.sizeTransition,
        //     // splashTransition: SplashTransition.slideTransition,
        //
        //     backgroundColor: Colors.black, nextScreen: LoginScreen(),),

        // body: SplashScreenView(
        //   navigateRoute:splashScreen.isLogin(context) ,
        //   duration: 5000,
        //   imageSize: 150,
        //   text: "𝕔𝕠𝕕𝕖 𝕖𝕟𝕘𝕚𝕟𝕖𝕖𝕣",
        //   imageSrc: "assets/images/programming.png",
        //   // textType: TextType.NormalText,
        //   textStyle: TextStyle(
        //     fontSize: 20.0,
        //       color: Colors.white
        //   ),
        //   backgroundColor: Color.fromRGBO(0, 0, 0,0.9),
        // ),

        body: Container(
            alignment: Alignment.center,
            color: Color.fromRGBO(0, 0, 0, 0.9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/programming.png",
                  height: 150,
                ),
                Text(
                  "𝕔𝕠𝕕𝕖 𝕖𝕟𝕘𝕚𝕟𝕖𝕖𝕣",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )
              ],
            )));
  }
}

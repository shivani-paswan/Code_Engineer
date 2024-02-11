import 'dart:async';

import 'package:code_engineer/AuthenticatedScreens/RegisterNow.dart';
import 'package:code_engineer/BottomNavigationScreens/Home/Home.dart';
import 'package:code_engineer/BottomNavigationScreens/BottomNavigationHandler.dart';
import 'package:code_engineer/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreenBkp extends StatefulWidget {
  const LoginScreenBkp({Key? key}) : super(key: key);

  @override
  State<LoginScreenBkp> createState() => _LoginScreenBkpState();
}

class _LoginScreenBkpState extends State<LoginScreenBkp> {
  bool loading = false;

  final _formkey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    // TODO: implement initState
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    setState(() {
      loading = true;
    });
    _auth
        .signInWithEmailAndPassword(
            email: userController.text.toString(),
            password: passwordController.text.toString())
        .then((value) {
      Utils().toastMessage(value.user!.email.toString() + " Login successful");
      setState(() {
        loading = false;
        Timer(
            Duration(seconds: 1),
            () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage())));
        userController.clear();
        passwordController.clear();
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop(); // for exit from application
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/programming.png',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const Text(
                  "𝚆𝚎𝚕𝚌𝚘𝚖𝚎 𝚋𝚊𝚌𝚔!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Ｐｌｅａｓｅ  ｌｏｇｉｎ  ｔｏ  ｙｏｕｒ  ａｃｃｏｕｎｔ",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          controller: userController,
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(128, 128, 128, 0.4),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(128, 128, 128, 0.4),
                              ),
                            ),
                            labelText: 'User Name',
                            hintText: 'Enter Your Name',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Name';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(128, 128, 128, 0.4),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(128, 128, 128, 0.4),
                              ),
                            ),
                            labelText: 'Paaspword',
                            hintText: 'Enter Your Password',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Password';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'forget password?',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    ////--------- firebase login------------
                    //   if(_formkey.currentState!.validate()){
                    //  login();
                    //   }

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.4),
                    ),
                    child: loading
                        ? const CircularProgressIndicator()
                        : const Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RegisterNow()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        " Register Now",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:code_engineer/BottomNavigationScreens/Home/Home.dart';
import 'package:code_engineer/BottomNavigationScreens/BottomNavigationHandler.dart';
import 'package:code_engineer/auth/LoginScreen.dart';
import 'package:code_engineer/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterNow extends StatefulWidget {
  const RegisterNow({Key? key}) : super(key: key);

  @override
  State<RegisterNow> createState() => _RegisterNowState();
}

class _RegisterNowState extends State<RegisterNow> {
  bool loading = false;
  final _formkey = GlobalKey<FormState>(); // for form
  final userController = TextEditingController(); // controller for user name
  final passwordController = TextEditingController(); // controller of paasword
  final confirmpasswordController =
      TextEditingController(); // controller of paasword
  FirebaseAuth _auth =
      FirebaseAuth.instance; // creating the instance of authentication
  @override
  void dispose() {
    // TODO: implement initState
    userController.dispose();
    passwordController.dispose(); // for reset
    confirmpasswordController.dispose(); // for reset
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/images/programming.png',
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Text(
                "Create new account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Ｐｌｅａｓｅ   ｆｉｌｌ   ｔｈｅ   ｆｏｒｍ  ",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "  ｔｏ   ｃｏｎｔｉｎｕｅ",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        controller: userController,
                        decoration: InputDecoration(
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
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                        decoration: InputDecoration(
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

                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.visiblePassword,
                          controller: confirmpasswordController,
                          decoration: InputDecoration(
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
                            labelText: ' Confirme Paaspword',
                            hintText: 'Enter Your Password',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) return 'Enter Password';
                            if (value != passwordController.text)
                              return 'Not Match';
                            return null;
                          }),
                    ),
                    // Align(
                    //     alignment: Alignment.centerRight,
                    //     child: Text('forget password?',style: TextStyle(fontSize: 12,color: Colors.white),)),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    setState(() {
                      // for loading on in   btn
                      loading = true;
                    });
                    _auth
                        .createUserWithEmailAndPassword(
                            // firebase work of register data
                            email: userController.text.toString(),
                            password: passwordController.text.toString())
                        .then((value) {
                      setState(() {
                        // for loading off in btn
                        loading = false;
                        userController
                            .clear(); // both statements are valid to clean textfeild after register
                        passwordController.text = '';
                        Utils().toastMessage('Registration Successful');

                        Timer(
                            Duration(seconds: 2),
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen())));
                      });
                    }).onError((error, stackTrace) {
                      setState(() {
                        loading = false;
                      });
                      debugPrint(error
                          .toString()); // for handle of th e debug statements
                      Utils().toastMessage(error.toString());
                    });
                  }

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(128, 128, 128, 0.4),
                  ),
                  child: loading
                      ? CircularProgressIndicator()
                      : Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Text(
                      " Login Now",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Text(
                "or",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login with",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  InkWell(
                      child: Text(
                    " Phone Number",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

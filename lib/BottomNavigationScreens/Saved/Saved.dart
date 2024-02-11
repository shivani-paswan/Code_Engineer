import 'package:code_engineer/BottomNavigationScreens/BottomNavigationHandler.dart';
import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Saved Playlist',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    ReusableTile(
                        title: "Last Moment Tutorial",
                        subtitle: "Python ",
                        trailingImage: "assets/images/sumer.png",
                        moreTab: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        close: () {}),
                    ReusableTile(
                        title: "Code With Harry",
                        subtitle: "Java",
                        trailingImage: "assets/images/harry.png",
                        moreTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        close: () {}),
                  ],
                ),
                Row(
                  children: [
                    ReusableTile(
                        title: "Apni Kaksha",
                        subtitle: "Data Structure",
                        trailingImage: "assets/images/shardha.png",
                        moreTab: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        close: () {}),
                    ReusableTile(
                        title: "Neat Roots",
                        subtitle: "Android With Java",
                        trailingImage: "assets/images/neatroot.png",
                        moreTab: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        close: () {}),
                  ],
                ),
                Row(
                  children: [
                    ReusableTile(
                        title: "Apni Kaksha",
                        subtitle: "HTML",
                        trailingImage: "assets/images/aman.png",
                        moreTab: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        close: () {}),
                    ReusableTile(
                        title: "Last Moment Tutorial",
                        subtitle: "Python ",
                        trailingImage: "assets/images/sumer.png",
                        moreTab: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        close: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableTile extends StatelessWidget {
  String title, subtitle;
  String trailingImage;
  VoidCallback moreTab, close;

  ReusableTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.trailingImage,
      required this.moreTab,
      required this.close})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromRGBO(128, 128, 128, 0.4)),
        child: Column(
          children: [
            GestureDetector(
              onTap: close,
              child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/images/close.png",
                      height: 24, color: Colors.white)),
            ),
            CircleAvatar(
              radius: 33,
              backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
              child: CircleAvatar(
                radius: 31,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(trailingImage),
                // AssetImage('assets/images/harry.png',),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  // TextSpan(
                  //   text: 'Course : ',
                  //   style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  // ),
                  TextSpan(
                    text: subtitle,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: moreTab,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 0.5, color: Colors.blueAccent)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' More Details',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Image.asset("assets/images/menu.png",
                height: 25, color: Colors.white),
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
                //close drawer, if drawer is open
              } else {
                scaffoldKey.currentState!.openDrawer();
                //open drawer, if drawer is closed
              }
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
          ]),
      drawer: Drawer(
        // backgroundColor:Color.fromRGBO(128, 128, 128,1),
        backgroundColor: Colors.black,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.only(
            right: 20,
          ),
          children: [
            SizedBox(
              height: 150,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.white, width: 0.5),
                )),
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 31,
                        child: CircleAvatar(
                          radius: 30,
                          // backgroundImage:AssetImage('assets/images/programming.png',),
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "assets/images/programming.png",
                            height: 100,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '𝕔𝕠𝕕𝕖 𝕖𝕟𝕘𝕚𝕟𝕖𝕖𝕣',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset(
                    "assets/images/user.png",
                    height: 25,
                    color: Colors.white,
                  )),
              title: Text(
                '𝐏𝐫𝐨𝐟𝐢𝐥𝐞',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 0.3,
              color: Color.fromRGBO(128, 128, 128, 0.4),
            ),
            ListTile(
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset(
                    "assets/images/img_1.png",
                    height: 30,
                    color: Colors.white,
                  )),
              title: Text(
                '𝐆𝐮𝐢𝐝𝐞𝐬',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 0.3,
              color: Color.fromRGBO(128, 128, 128, 0.4),
            ),
            ListTile(
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset(
                    "assets/images/help.png",
                    height: 30,
                    color: Colors.white,
                  )),
              title: Text(
                '𝐇𝐞𝐥𝐩 & 𝐒𝐮𝐩𝐩𝐨𝐫𝐭',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 0.3,
              color: Color.fromRGBO(128, 128, 128, 0.4),
            ),
            ListTile(
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset(
                    "assets/images/settings.png",
                    height: 30,
                    color: Colors.white,
                  )),
              title: Text(
                '𝐏𝐥𝐚𝐲𝐥𝐢𝐬𝐭 𝐒𝐞𝐭𝐭𝐢𝐧𝐠𝐬',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 150,
                  decoration: BoxDecoration(
                    // color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/banner.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Code Masters',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border:
                                Border.all(width: 0.5, color: Colors.white)),
                        child: Text(
                          'View More',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )),
                  ],
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Color.fromRGBO(128, 128, 128, 0.4),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                    'assets/images/harry.png',
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Text(
                                "Code with Harry",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Color.fromRGBO(128, 128, 128, 0.4),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                    'assets/images/aman.png',
                                  ),
                                ),
                              ),
                              Text(
                                "Aman Dhattawal",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Color.fromRGBO(128, 128, 128, 0.4),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                    'assets/images/shardha.png',
                                  ),
                                ),
                              ),
                              Text(
                                "Shardha Kapra",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Color.fromRGBO(128, 128, 128, 0.4),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                    'assets/images/sumer.png',
                                  ),
                                ),
                              ),
                              Text(
                                "Sumer Rajpurohit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Color.fromRGBO(128, 128, 128, 0.4),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                    'assets/images/neatroot.png',
                                  ),
                                ),
                              ),
                              Text(
                                "Rana tahir bilal",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Available Notes',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5, left: 5),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/reactjs.png'),
                              fit: BoxFit.contain),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                            // colocr: Colors.white
                          ),
                          child: Center(
                            child: Text(
                              'REACT JS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5, left: 5),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/python.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                            // colocr: Colors.white
                          ),
                          child: Center(
                            child: Text(
                              'PYTHON',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5, left: 5),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/java.png'),
                              fit: BoxFit.contain),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                            // colocr: Colors.white
                          ),
                          child: Center(
                            child: Text(
                              'JAVA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5, left: 5),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/html.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                            // colocr: Colors.white
                          ),
                          child: Center(
                            child: Text(
                              'HTML',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5, left: 5),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/css.png'),
                              fit: BoxFit.contain),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                            // colocr: Colors.white
                          ),
                          child: Center(
                            child: Text(
                              'CSS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5, left: 5),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/python.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                            // colocr: Colors.white
                          ),
                          child: Center(
                            child: Text(
                              'PYTHON',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

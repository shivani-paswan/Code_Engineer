import 'package:code_engineer/BottomNavigationScreens/Home/Models/CodeMasterModel.dart';
import 'package:code_engineer/BottomNavigationScreens/Home/Screens/CodeMasterDetails/CodeMasterDetails.dart';
import 'package:code_engineer/HttpCalls/apiService.dart';
import 'package:code_engineer/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late CodeMasterModel codeMasterModel;
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    Map<String, String> params = {
      "prmcode": "100",
      "prmname": "code with harry"
    };
    codeMasterModel =
        (await ApiService().getCodeMasterList("GetCodeMasterData", params));
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  List masterList = [
    {"name": "Aman", "img": "assets/images/aman.png"},
    {"name": "Aman", "img": "assets/images/aman.png"},
    {"name": "Aman", "img": "assets/images/aman.png"},
    {"name": "Aman", "img": "assets/images/aman.png"},
    {"name": "Aman", "img": "assets/images/aman.png"},
    {"name": "Aman", "img": "assets/images/aman.png"},
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight) / 6;
    final double itemWidth = size.width / 2;
    var listTile = ListTile(
      leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(128, 128, 128, 0.4),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Image.asset("assets/images/user.png",
              height: 25, color: CommonColors.textColor)),
      title: Text(
        '𝐏𝐫𝐨𝐟𝐢𝐥𝐞',
        style: TextStyle(color: CommonColors.textColor),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
          backgroundColor: CommonColors.themeColor,
          leading: IconButton(
            icon: Image.asset("assets/images/menu.png",
                height: 25, color: CommonColors.textColor),
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
                color: CommonColors.textColor,
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
          padding: const EdgeInsets.only(
            right: 20,
          ),
          children: [
            SizedBox(
              height: 150,
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: CommonColors.textColor, width: 0.5),
                )),
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: CommonColors.textColor,
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
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '𝕔𝕠𝕕𝕖 𝕖𝕟𝕘𝕚𝕟𝕖𝕖𝕣',
                        style: TextStyle(
                            fontSize: 16, color: CommonColors.textColor),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            listTile,
            const SizedBox(
              height: 10,
            ),
            Divider(thickness: 0.3, color: CommonColors.colorSecondary),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset(
                    "assets/images/img_1.png",
                    height: 30,
                    color: CommonColors.textColor,
                  )),
              title: Text(
                '𝐆𝐮𝐢𝐝𝐞𝐬',
                style: TextStyle(color: CommonColors.textColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 0.3,
              color: CommonColors.colorSecondary,
            ),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset("assets/images/help.png",
                      height: 30, color: CommonColors.textColor)),
              title: Text(
                '𝐇𝐞𝐥𝐩 & 𝐒𝐮𝐩𝐩𝐨𝐫𝐭',
                style: TextStyle(color: CommonColors.textColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 0.3,
              color: Color.fromRGBO(128, 128, 128, 0.4),
            ),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset(
                    "assets/images/settings.png",
                    height: 30,
                    color: Colors.white,
                  )),
              title: Text(
                '𝐏𝐥𝐚𝐲𝐥𝐢𝐬𝐭 𝐒𝐞𝐭𝐭𝐢𝐧𝐠𝐬',
                style: TextStyle(color: CommonColors.textColor),
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
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 150,
                decoration: const BoxDecoration(
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
                    // codeMasterModel.prmname.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(width: 0.5, color: Colors.white)),
                      child: const Text(
                        'View More',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                ],
              ),

              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: masterList == null ? 0 : masterList.length,
                    itemBuilder: (BuildContext context, int index) {
                      Map dataList = masterList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CodeMasterDetails(dataList: dataList)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Color.fromRGBO(128, 128, 128, 0.4),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(dataList["img"]),
                                  // AssetImage('assets/images/aman.png',),
                                ),
                              ),
                              // Text("Aman Dhattawal",style: TextStyle(color: Colors.white),),
                              Text(
                                dataList["name"],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 15,bottom: 15),
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(right: 25),
              //
              //           child: Column(
              //             children: [
              //               CircleAvatar(
              //                 radius: 30,
              //                 backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
              //
              //                 child: CircleAvatar(
              //                   radius: 28,
              //                   backgroundImage:AssetImage('assets/images/harry.png',),
              //                   backgroundColor: Colors.transparent,
              //                 ),
              //               ),
              //               Text("Code with Harry",style: TextStyle(color: Colors.white),),
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(right: 25),
              //           child: Column(
              //             children: [
              //               CircleAvatar(
              //                 radius: 30,
              //
              //                 backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
              //
              //                 child: CircleAvatar(
              //                   radius: 28,
              //                   backgroundImage:AssetImage('assets/images/aman.png',),
              //
              //                 ),
              //               ),
              //               Text("Aman Dhattawal",style: TextStyle(color: Colors.white),),
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(right: 25),
              //           child: Column(
              //             children: [
              //               CircleAvatar(
              //                 radius: 30,
              //             backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
              //
              //                 child: CircleAvatar(
              //                   radius: 28,
              //                   backgroundImage:AssetImage('assets/images/shardha.png',),
              //                 ),
              //               ),
              //               Text("Shardha Kapra",style: TextStyle(color: Colors.white),),
              //             ],
              //           ),
              //         ),
              //
              //         Padding(
              //           padding: const EdgeInsets.only(right: 25),
              //           child: Column(
              //             children: [
              //               CircleAvatar(
              //                 radius: 30,
              //                 backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
              //                 child: CircleAvatar(
              //                   radius: 28,
              //                   backgroundImage:AssetImage('assets/images/sumer.png',),
              //                 ),
              //               ),
              //               Text("Sumer Rajpurohit",style: TextStyle(color: Colors.white),),
              //             ],
              //           ),
              //         ),
              //
              //         Padding(
              //           padding: const EdgeInsets.only(right: 25),
              //           child: Column(
              //             children: [
              //               CircleAvatar(
              //                 radius: 30,
              //                 backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
              //                 child: CircleAvatar(
              //                   radius: 28,
              //                   backgroundImage:AssetImage('assets/images/neatroot.png',),
              //                 ),
              //               ),
              //               Text("Rana tahir bilal",style: TextStyle(color: Colors.white),),
              //             ],
              //           ),
              //         ),
              //
              //       ],
              //     ),
              //   ),
              // ),

              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Available Notes',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),

              Expanded(
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisCount: 2,
                  controller: ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: List.generate(10, (index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/java.png'),
                            fit: BoxFit.contain),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.black, Colors.black],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                          // colocr: Colors.white
                        ),
                        child: const Center(
                          child: Text(
                            'JAVA',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Flexible(
              //       child: Container(
              //         margin: EdgeInsets.only(right: 5,left: 5),
              //         height: 90,
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.all(Radius.circular(10)),
              //           image: DecorationImage(image: AssetImage('assets/images/reactjs.png'),fit: BoxFit.contain),
              //         ),
              //
              //         child:Container(
              //           decoration: BoxDecoration(
              //             gradient: LinearGradient(
              //               colors: [Colors.black, Colors.black],
              //               begin: Alignment.topCenter,
              //               end: Alignment.bottomCenter,
              //             ),
              //             borderRadius: BorderRadius.all(Radius.circular(10)),
              //             color: Color.fromRGBO(0,0,0,0.6 ),
              //             // colocr: Colors.white
              //           ),
              //           child: Center(child: Text('REACT JS',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
              //         ),
              //       ),
              //     ),
              //
              //
              //     Flexible(
              //       child: Container(
              //         margin: EdgeInsets.only(right: 5,left: 5),
              //         height: 90,
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.all(Radius.circular(10)),
              //           image: DecorationImage(image: AssetImage('assets/images/python.png'),fit: BoxFit.cover),
              //         ),
              //
              //         child:Container(
              //           decoration: BoxDecoration(
              //             gradient: LinearGradient(
              //               colors: [Colors.black, Colors.black],
              //               begin: Alignment.topCenter,
              //               end: Alignment.bottomCenter,
              //             ),
              //             borderRadius: BorderRadius.all(Radius.circular(10)),
              //             color: Color.fromRGBO(0,0,0,0.6 ),
              //             // colocr: Colors.white
              //           ),
              //           child: Center(child: Text('PYTHON',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),SizedBox(height: 10,),
              //
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Flexible(
              //       child: Container(
              //         margin: EdgeInsets.only(right: 5,left: 5),
              //         height: 90,
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.all(Radius.circular(10)),
              //           image: DecorationImage(image: AssetImage('assets/images/java.png'),fit: BoxFit.contain),
              //         ),
              //
              //         child:Container(
              //           decoration: BoxDecoration(
              //             gradient: LinearGradient(
              //               colors: [Colors.black, Colors.black],
              //               begin: Alignment.topCenter,
              //               end: Alignment.bottomCenter,
              //             ),
              //             borderRadius: BorderRadius.all(Radius.circular(10)),
              //             color: Color.fromRGBO(0,0,0,0.6 ),
              //             // colocr: Colors.white
              //           ),
              //           child: Center(child: Text('JAVA',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
              //         ),
              //       ),
              //     ),
              //
              //
              //     Flexible(
              //       child: Container(
              //         margin: EdgeInsets.only(right: 5,left: 5),
              //         height: 90,
              //
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.all(Radius.circular(10)),
              //           image: DecorationImage(image: AssetImage('assets/images/html.png'),fit: BoxFit.cover),
              //         ),
              //
              //         child:Container(
              //           decoration: BoxDecoration(
              //             gradient: LinearGradient(
              //               colors: [Colors.black, Colors.black],
              //               begin: Alignment.topCenter,
              //               end: Alignment.bottomCenter,
              //             ),
              //             borderRadius: BorderRadius.all(Radius.circular(10)),
              //             color: Color.fromRGBO(0,0,0,0.6 ),
              //             // colocr: Colors.white
              //           ),
              //           child: Center(child: Text('HTML',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              //
              //
              //                SizedBox(height: 10,),
              //
              //                Row(
              //                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                  children: [
              //                    Flexible(
              //                      child: Container(
              //                        margin: EdgeInsets.only(right: 5,left: 5),
              //                        height: 90,
              //                        decoration: BoxDecoration(
              //                          color: Colors.white,
              //                          borderRadius: BorderRadius.all(Radius.circular(10)),
              //                          image: DecorationImage(image: AssetImage('assets/images/css.png'),fit: BoxFit.contain),
              //                        ),
              //
              //                        child:Container(
              //                          decoration: BoxDecoration(
              //                            gradient: LinearGradient(
              //                              colors: [Colors.black, Colors.black],
              //                              begin: Alignment.topCenter,
              //                              end: Alignment.bottomCenter,
              //                            ),
              //                            borderRadius: BorderRadius.all(Radius.circular(10)),
              //                            color: Color.fromRGBO(0,0,0,0.6 ),
              //                            // colocr: Colors.white
              //                          ),
              //                          child: Center(child: Text('CSS',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
              //                        ),
              //                      ),
              //                    ),
              //
              //
              //                    Flexible(
              //                      child: Container(
              //                        margin: EdgeInsets.only(right: 5,left: 5),
              //                        height: 90,
              //                        decoration: BoxDecoration(
              //                          color: Colors.white,
              //                          borderRadius: BorderRadius.all(Radius.circular(10)),
              //                          image: DecorationImage(image: AssetImage('assets/images/python.png'),fit: BoxFit.cover),
              //                        ),
              //
              //                        child:Container(
              //                          decoration: BoxDecoration(
              //                            gradient: LinearGradient(
              //                              colors: [Colors.black, Colors.black],
              //                              begin: Alignment.topCenter,
              //                              end: Alignment.bottomCenter,
              //                            ),
              //                            borderRadius: BorderRadius.all(Radius.circular(10)),
              //                            color: Color.fromRGBO(0,0,0,0.6 ),
              //                            // colocr: Colors.white
              //                          ),
              //                          child: Center(child: Text('PYTHON',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
              //                        ),
              //                      ),
              //                    ),
              //                  ],
              //                ),SizedBox(height: 10,),
              //
            ],
          ),
        ),
      ),
    );
  }
}

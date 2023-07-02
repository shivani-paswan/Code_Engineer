import 'package:flutter/material.dart';

import 'BottomNavigation/Home.dart';
import 'BottomNavigation/Profile.dart';
import 'BottomNavigation/Saved.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage=0;


  pageCaller(int index) {
    switch (index) {
      case 0:
        {
          return Home();
        }
      case 1:
        {
          return Saved();
        }
      case 2:
        {
          return Profile();
        }

    }
  }
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(

          body:
          pageCaller(selectedPage),
          // _pageOptions[selectedPage],     // this will load page 1 from pageOption array list
          bottomNavigationBar:
          BottomNavigationBar(
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0.9),
              selectedItemColor: Colors.white,
              selectedFontSize: 14.0,
              unselectedFontSize:12.0,
              currentIndex: selectedPage,
              onTap: (int index) {
                setState(() {
                  selectedPage = index;
                });
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset("assets/images/home.png",height:20,color:  selectedPage==0?Colors.white: Colors.grey,),
                  // icon:Icon(Icons.menu_outlined,color:  selectedPage==0?Colors.white: Colors.grey,),
                    label: 'Home'


                ),

                BottomNavigationBarItem(
                    icon: Image.asset("assets/images/bookmark.png",height:20,color:  selectedPage==1?Colors.white: Colors.grey,),

                    label: 'Saved'
                ),

                BottomNavigationBarItem(
                    // icon:Image.asset("assets/images/bookin2.png",height:20,color: selectedPage==2?Colors.red: Colors.grey,),
                    icon: Image.asset("assets/images/user.png",height:20,color:  selectedPage==2?Colors.white: Colors.grey,),


                    label: 'Profile'

                ),



              ]
          )
      );
  }
  void callBack(int index){
    setState((){
      selectedPage=index;
    });
  }
}

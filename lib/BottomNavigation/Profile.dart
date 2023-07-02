import 'package:code_engineer/ProfilePages/Contact.dart';
import 'package:code_engineer/ProfilePages/Membership.dart';
import 'package:code_engineer/ProfilePages/Policy.dart';
import 'package:code_engineer/ProfilePages/TermCondition.dart';
import 'package:code_engineer/auth/LoginScreen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 28,
            backgroundImage:AssetImage('assets/images/programming.png',),
            backgroundColor: Colors.transparent,
          ),
        ),
      title: Text('𝕔𝕠𝕕𝕖 𝕖𝕟𝕘𝕚𝕟𝕖𝕖𝕣',style: TextStyle(fontSize: 16),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.notifications,color: Colors.white,size: 30,),
          )
        ],
      ),
      body: SafeArea(
        child:Container(
         padding: EdgeInsets.only(top: 10,bottom: 10,right: 40,left: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Stack(
                  alignment: Alignment.center,
fit: StackFit.passthrough,
// alignment: Alignment.bottomCenter,
                  children: [
                    DottedBorder(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        child: CircleAvatar(
            radius: 40,
              backgroundImage:AssetImage('assets/images/coder.png',),
              backgroundColor: Colors.transparent,
            ),
                      ),
                      borderType: BorderType.Circle,
                      strokeCap: StrokeCap.round,
                      strokeWidth: 2,
                      dashPattern: [10,5,10,5,10,5],
                      color: Colors.grey,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 110,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          border: Border.all(color: Colors.black,width: 3)
                        ),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child:
                            Icon(Icons.edit,color: Colors.black,)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text('𝐬𝐡𝐢𝐯𝐚𝐧𝐢 𝐩𝐚𝐬𝐰𝐚𝐧',style: TextStyle(color: Colors.white,fontSize: 16,),),
 SizedBox(height: 5,),
                Text('9 7 1 8 0 0 4 6 5 1',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),

                SizedBox(height: 50,),
ListTile(
  leading: CircleAvatar(
    radius: 25,
    // backgroundImage:AssetImage('assets/images/membership.png',),
    backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
    child: Image.asset("assets/images/membership.png",height:30,color: Colors.white,),
  ),

  title: Text('𝐌𝐲 𝐌𝐞𝐦𝐛𝐞𝐫𝐬𝐡𝐢𝐩',style:TextStyle(color: Colors.white),),
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Membership()));
  },

),
                SizedBox(height: 10,),
                Divider(thickness: 0.5,color: Color.fromRGBO(128, 128, 128, 0.4),),

              ListTile(
  leading: CircleAvatar(
    radius: 25,
    // backgroundImage:AssetImage('assets/images/membership.png',),
    backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
    child: Image.asset("assets/images/contact.png",height:25,color: Colors.white,),
  ),

  title: Text('𝐂𝐨𝐧𝐭𝐚𝐜𝐭 𝐮𝐬',style:TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact()));

                },
),
                SizedBox(height: 10,),
                Divider(thickness: 0.5,color: Color.fromRGBO(128, 128, 128, 0.4),),


              ListTile(
  leading: CircleAvatar(
    radius: 25,
    // backgroundImage:AssetImage('assets/images/membership.png',),
    backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
    child: Image.asset("assets/images/privacy-policy.png",height:30,color: Colors.white,),
  ),

  title: Text('𝐏𝐫𝐢𝐯𝐚𝐜𝐲 𝐏𝐨𝐥𝐢𝐜𝐲',style:TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Policy()));

                },
),
                SizedBox(height: 10,),
                Divider(thickness: 0.5,color: Color.fromRGBO(128, 128, 128, 0.4),),

              ListTile(
  leading: CircleAvatar(
    radius: 25,
    // backgroundImage:AssetImage('assets/images/membership.png',),
    backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
    child: Image.asset("assets/images/terms-and-conditions.png",height:25,color: Colors.white,),
  ),

  title: Text('𝐓𝐞𝐫𝐦 𝐀𝐧𝐝 𝐂𝐨𝐧𝐝𝐢𝐭𝐢𝐨𝐧𝐬',style:TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TermCondition()));

                },
),
                SizedBox(height: 10,),
                Divider(thickness: 0.5,color: Color.fromRGBO(128, 128, 128, 0.4),),

ListTile(
  leading: CircleAvatar(
    radius: 25,
    // backgroundImage:AssetImage('assets/images/membership.png',),
    backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
    child: Image.asset("assets/images/logout.png",height:25,color: Colors.white,),
  ),

  title: Text('𝐋𝐨𝐠𝐨𝐮𝐭',style:TextStyle(color: Colors.white),),

),
                SizedBox(height: 10,),




              ],
            ),
          ),
        ),
      ),
    );
  }
}

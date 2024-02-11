import 'package:flutter/material.dart';

class Policy extends StatefulWidget {
  const Policy({Key? key}) : super(key: key);

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        leading:  GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Image.asset("assets/images/close.png",height:25,color: Colors.white,),
          ),
        ),

actions: [
  Padding(
    padding: const EdgeInsets.all(15),
    child: Icon(Icons.download_rounded,color: Colors.white,size: 30,),
  )
],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: 20,left: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      // backgroundImage:AssetImage('assets/images/programming.png',),
                      backgroundColor: Colors.transparent,
                      child: Image.asset("assets/images/programming.png",height:100,),
                    ),
                    SizedBox(width: 10,),
                    Text('𝐏𝐫𝐢𝐯𝐚𝐜𝐲 𝐏𝐨𝐥𝐢𝐜𝐲',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: 150,
                  padding: EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(128,128, 128, 0.4)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.calendar_month,color: Colors.blueAccent,),
                    SizedBox(width: 10,),
                    Text('Jan 15 2023',style: TextStyle(color: Colors.blueAccent),)
                  ],),
                ),

                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(128, 128, 128, 0.4),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    "If your website or app has the option to receive payments then including a Privacy Policy is required by law."
                    "If your website or app has the option to receive payments then including a Privacy Policy is required by law."
                    "If your website or app has the option to receive payments then including a Privacy Policy is required by law."
                    "If your website or app has the option to receive payments then including a Privacy Policy is required by law."
                    "If your website or app has the option to receive payments then including a Privacy Policy is required by law."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                      " We will make sure that your Privacy Policy ensures that you stay in line with your legal obligations."
                    ,
 style: TextStyle(color: Colors.white),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15,bottom: 15,),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(child: Text('I  Accepted',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

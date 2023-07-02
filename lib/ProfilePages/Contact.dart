import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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

      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: 15,left: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('𝐆𝐞𝐭  𝐢𝐧',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text('touch',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/msg.png",color: Colors.white,height: 50,),

                  ],
                ),
                Text("Say hello or ask for help We're here for you.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                 SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("User Name",style: TextStyle(color: Colors.white,),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(128, 128, 128,0.4),
                          labelStyle: TextStyle(color: Colors.black87),
                          hintStyle: TextStyle(color:Colors.grey),
                          hintText: 'Enter Your Name',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(128, 128, 128,0.4),),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),
                      Text("Email",style: TextStyle(color: Colors.white,),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(128, 128, 128,0.4),
                          labelStyle: TextStyle(color: Colors.black87),
                          hintStyle: TextStyle(color:Colors.grey),
                          // border: OutlineInputBorder(),
                          hintText: 'Enter Your mail Id',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(128, 128, 128,0.4),),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),

                      Text("Subject",style: TextStyle(color: Colors.white,),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(128, 128, 128,0.4),
                          labelStyle: TextStyle(color: Colors.black87),
                          hintStyle: TextStyle(color:Colors.grey),
                          // border: OutlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(128, 128, 128,0.4),),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),

                      Text("How can we help?",style: TextStyle(color: Colors.white,),),
                      SizedBox(height: 5,),
                      TextField(
                        maxLines: 4,
                        keyboardType: TextInputType.multiline,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(128, 128, 128,0.4),
                          labelStyle: TextStyle(color: Colors.black87),
                          hintStyle: TextStyle(color:Colors.grey),
                          // border: OutlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(128, 128, 128,0.4),),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 20,bottom: 20,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(child: Text('SEND REQUEST',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
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

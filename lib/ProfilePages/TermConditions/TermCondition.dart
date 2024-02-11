import 'package:flutter/material.dart';

class TermCondition extends StatefulWidget {
  const TermCondition({Key? key}) : super(key: key);

  @override
  State<TermCondition> createState() => _TermConditionState();
}

class _TermConditionState extends State<TermCondition> {
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
      body: SafeArea(child: 
      Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Image.asset("assets/images/img_3.png",height:40,),
                SizedBox(width: 15,),
                Text('𝐓𝐞𝐫𝐦 𝐀𝐧𝐝 𝐂𝐨𝐧𝐝𝐢𝐭𝐢𝐨𝐧𝐬',style: TextStyle(color: Colors.blue,fontSize: 25),)
              ],),
               SizedBox(height: 20,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     height: 550,
                     width: 350,
                     padding: EdgeInsets.all(20),
                     decoration: BoxDecoration(color: Color.fromRGBO(128, 128, 128,0.4)),
                     child:
                     SingleChildScrollView(
                       // scrollDirection: Axis.horizontal

                       child: Text(
                           "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           // "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           // "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           // "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           // "These General Terms incorporate our Privacy Policy which describes (among other things) how we will use any personal information collected as a result of your use of the Services. For more information, please see our full Privacy PolicyAdditional terms, which should be read in conjunction with these General Terms apply to some of our Services (Additional Terms) and can be accessed here"
                           ,
                         style: TextStyle(color: Colors.white),
                       ),
                     )
                     ,),
                   Flexible(child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         height: 100,width: 10,
                         decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.all(Radius.circular(5)) ),
                         ),
                       SizedBox(height: 10,),
                       Container(height: 100,width: 10,
                         decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(5)) ),
                       ),
                       SizedBox(height: 10,),

                       Container(height: 100,width: 10,
                         decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(5)) ),

                       ),
                     ],
                   ))
                 ],
               ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(),
                decoration:const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white, //New
                      blurRadius: 40.0,
                      spreadRadius: 60,
                      offset: Offset(20,0)
                    )
                  ],
                ),child:
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue,width: 0.5),borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(child: Text('Declined',style: TextStyle(color: Colors.blue),),),),
                    SizedBox(width: 50,),
                    Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                      decoration: BoxDecoration(
                          color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(child: Text('Accepted',style: TextStyle(color: Colors.white),),),),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class Membership extends StatefulWidget {
  const Membership({Key? key}) : super(key: key);

  @override
  State<Membership> createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {

Border ListBorderSelected=Border.all(color: Colors.blue);
Border ListBorderUnselected=Border.all(color: Color.fromRGBO(0,0,0,0));
Border SecondSelected=Border.all(color:Color.fromRGBO(0, 0, 0, 0));
  @override
  Widget build(BuildContext context) {
   return
       Scaffold(
         backgroundColor: Colors.black,
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
         body:SafeArea(
           child: Container(
             padding: EdgeInsets.all(20),
             alignment: Alignment.topCenter,
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     margin: EdgeInsets.only(bottom: 10),
                     height: 80,
                     width: 80,
                     alignment: Alignment.center,
                       padding: EdgeInsets.all(20),
                       decoration: BoxDecoration(
                           color: Color.fromRGBO(128, 128, 128, 0.4),
                           borderRadius: BorderRadius.all(Radius.circular(20))),
                       child: Image.asset("assets/images/crown.png",color: Colors.blueAccent,)),
                   Text("Activate Code Engineer Pro ",style: TextStyle(color: Colors.white),),

                   SizedBox(height: 10,),
                   Text("Access to all Playlists,sessions,personal chat,professional guidlines and customize training ",textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.grey),),

                   SizedBox(height: 20,),

                    Container(
                      width: 150,
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Center(
                      child: Text('ONE TIME OFFER',style: TextStyle(color: Colors.white,fontSize: 10),),
                    ),),
                   SizedBox(height: 10,),

                   Container(
                     width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(bottom: 10),
                     color: Color.fromRGBO(128, 128, 128, 0.4),

                     child: Column(
                       children: [
                         Container(
                           // height: 30,
                           width: MediaQuery.of(context).size.width,
                           color: Colors.blueAccent,
                           child:Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image.asset("assets/images/crown.png",color: Colors.white,height: 20,),
                               SizedBox(width: 5,),
                               Text('Best Seller',style: TextStyle(color: Colors.white),)
                             ],
                           ) ,
                         ),
                         Container(
                           margin: EdgeInsets.all(10),

                           decoration: BoxDecoration(
                             border: ListBorderSelected,
                               color: Color.fromRGBO(128, 128, 128, 0.4),
                               borderRadius: BorderRadius.all(Radius.circular(10))
                           ),
                           child: ListTile(
                             title: Text('₹ 12,000 per Year ( ₹ 1,000/Month)',style: TextStyle(color: Colors.white),),
                             subtitle:Text('Instead of ₹20,0000',style: TextStyle(color: Colors.white),) ,
                             onTap: (){
                               setState((){
                                 ListBorderSelected=Border.all(width:1,color: Colors.blueAccent);
                                 ListBorderUnselected=Border.all(width: 0.5,color:Color.fromRGBO(0,0 ,0,0 ));
                                 SecondSelected=Border.all(width: 0.5,color:Color.fromRGBO(0,0 ,0,0 ));

                               });
                             },
                           ),
                         ),

                         SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              border: ListBorderUnselected,
                             color: Color.fromRGBO(128, 128, 128, 0.4),
                             borderRadius: BorderRadius.all(Radius.circular(10))
                           ),
                           child: ListTile(
                             title: Text('₹ 24000 per Year ( ₹ 2,000/ Month)',style: TextStyle(color: Colors.white),),
                             subtitle:Text('Instead of ₹30,000',style: TextStyle(color: Colors.white),) ,
                             onTap: (){
                               setState((){
                                 ListBorderUnselected=Border.all(width: 1,color: Colors.blueAccent);
                                 ListBorderSelected=Border.all(width: 0.5,color:Color.fromRGBO(0,0 ,0,0 ));
                                 SecondSelected=Border.all(width: 0.5,color:Color.fromRGBO(0,0 ,0,0 ));

                               });
                             },
                           ),
                         ),

                         SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              border:   SecondSelected,
                             color: Color.fromRGBO(128, 128, 128, 0.4),
                             borderRadius: BorderRadius.all(Radius.circular(10))
                           ),
                           child: ListTile(
                             title: Text('₹ 60,000 per Year ( ₹ 5,000/Month)',style: TextStyle(color: Colors.white),),
                             subtitle:Text('Instead of ₹ 10,0000',style: TextStyle(color: Colors.white),) ,
                             onTap: (){
                               setState((){
                                 SecondSelected=Border.all(width: 1,color:Colors.blueAccent);
                                 ListBorderUnselected=Border.all(color:Color.fromRGBO(0,0 ,0,0 ));

                               });
                             },
                           ),
                         ),


                       ],
                     ),
                   ),
                   SizedBox(height: 20,),
                   Container(
                     padding: EdgeInsets.only(top: 20,bottom: 20),
                     decoration: BoxDecoration(
                         color: Colors.blueAccent,
                     borderRadius: BorderRadius.all(Radius.circular(10))
                     ),
                     child: Center(child: Text("Activate Offer",style: TextStyle(color: Colors.white),),),
                   ),
 SizedBox(height: 30),
                   RichText(
                     textAlign: TextAlign.center,
                     text: TextSpan(
                       children: [
                         TextSpan(
                           text: 'Restore purchase,  ',
                           style: TextStyle( color: Colors.white,
                           ),
                         ),
                         TextSpan(
                           text: 'T&C ',
                           style: TextStyle( color: Colors.white,
                           ),
                         ),
                         TextSpan(
                           text: ' and ',
                           style: TextStyle(color: Colors.grey,),
                         ),
                         TextSpan(
                           text: ' Privacy Policy ',
                           style: TextStyle( color: Colors.white,
                           ),
                         ),
                       ],
                     ),
                   ),



                 ],
               ),
             ),
           ),
         )

       );
  }
}

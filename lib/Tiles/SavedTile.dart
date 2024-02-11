import 'package:code_engineer/common/colors.dart';
import 'package:flutter/material.dart';

class SavedTile extends StatelessWidget {
  String title,subtitle;
  String trailingImage;
  VoidCallback moreTab,close;

  SavedTile({Key? key,required this.title,required this.subtitle,required this.trailingImage,required this.moreTab,required this.close}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(

        margin: EdgeInsets.all(10),

        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            // color: Color.fromRGBO(128, 128, 128, 0.4)
            color: CommonColors.colorSecondary
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: close,
              child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/images/close.png",height:24,color:  Colors.white)),
            ),

            CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromRGBO(128, 128, 128, 0.4),
              child: CircleAvatar(
                radius: 29,
                backgroundColor: Colors.transparent,
                backgroundImage:
                AssetImage(trailingImage),
                // AssetImage('assets/images/harry.png',),
              ),
            ),

            Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                    style: TextStyle(color: Colors.grey,),
                  ),

                ],
              ),
            ),

            SizedBox(height: 10,),

            GestureDetector(
              onTap:moreTab ,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 0.5,color: Colors.blueAccent)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(' More Details',style: TextStyle(color: Colors.blueAccent),),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward,color: Colors.blueAccent,),

                  ],
                ),
              ),
            ),

          ],
        ),
      );

  }
}
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:untitled5/navigation.dart';

class fifthScreen extends StatelessWidget{
  Color heading = Color(0xff154360);
  Color textColor = Color(0xff808B96);

  @override
  Widget build(BuildContext context) {
    const arrRoom = ['room6.jpeg','room7.jpeg','room8.jpeg','room9.jpeg','room5.jpeg','download.jpeg',];
    const arrLocation = ['6-kathmandu,Nepal','6-kathmandu,Nepal','6-kathmandu,Nepal','6-kathmandu,Nepal'
      ,'6-kathmandu,Nepal','6-kathmandu,Nepal',];

    const Color tdBgColor = Color(0xFFEEEFF5);
    return Scaffold(

      body: SafeArea(
      child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal:30,vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  GradientIcon(icon: Icons.home_filled,
                      size: 50,
                      gradient: LinearGradient(
                          colors: [Color(0xFFf6d365),Color(0xFFfda085)]
                      )),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10,left: 10),
        
                        child: Text('Ghar Sewa',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text('Find Better To Settle',
                        style: TextStyle(
                            height:0.2,
                            color: Color(0xFFB0BEC5),
                          fontSize: 10
                        ),),
                      )
                    ],
                  ),
                  SizedBox(width: 60,),
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: ElevatedButton(onPressed: (){}, child:Text('Switch to rent'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: heading,
                        ),
                      ),
                      foregroundColor: heading,
                      padding: EdgeInsets.all(12)
        
                    ),),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.location_solid,color: Colors.blue,),
                    SizedBox(width: 20,),
                    Text('Kathmandu',style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/room9.jpeg',width: 320,fit: BoxFit.cover,height: 200,)),
                  Positioned(
                    top: 20,
                      left: 10,
                      child: Text('Invite Your Friends',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),)),

                  Positioned(
                    top: 60,
                      left: 10,
                      child: Text('All discount up to 40%s',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),)),
                  Positioned(
                    top: 130,
                      left: 10,
                      child: ElevatedButton(onPressed: (){
        
                      }, child: Text('Details'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.white
                            ),
                          ),
                          foregroundColor: Colors.white,
                          minimumSize: Size(135, 40)
        
                        ),)),
                  Positioned(
                    top: 130,
                      right: 10,
                     child: Container(
                       width: 135,
                       height: 40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         gradient: LinearGradient(
                             colors: [Color(0xFFf6d365),Color(0xFFfda085)])
                       ),
                       
        
        
                       child: ElevatedButton(onPressed: (){
        
                       }, child: Text('Invite'),
                       style: ElevatedButton.styleFrom(
                         shape:
                           RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10),
        
                           ),
        
                         minimumSize: Size(135, 40),
                         backgroundColor: Colors.transparent,
                         shadowColor: Colors.transparent,
                         foregroundColor: Colors.black54
        
                       ),),
        
                     ),
                  )],
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal:10),
                child: Row(
                  children: [
                    Text('Properties Near You',style: TextStyle(
                      fontSize: 19,
                      color: heading,
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(width:50),

                    Text('View All',style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500
                    ),),
        
                    Icon(Icons.keyboard_arrow_right_outlined,
                    color: Colors.blue,
                    size: 30,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: arrRoom.length,
                  scrollDirection:Axis.horizontal,
                  itemBuilder: (context, index) {
                  return row(arrRoom[index],arrLocation[index]);
                },),
              )
            ],
          ),
        ),
      ),


    );

  }
  Widget row (String image,location){
   return  Row(
      children: [
        Container(
          margin:EdgeInsets.symmetric(horizontal: 15),
          height: 350,
          width: 200,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [

                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/$image',height: 220,fit: BoxFit.cover,)),
                  Positioned(
                      top:180,
                      right: 15,
                      child: Container(
                        child: Text('  Rs 25K/month',style: TextStyle(
                          color: Colors.white
                        ),),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.deepPurpleAccent,
                        ),

                        width: 110,
                        height: 25,
                      )),
                ],
              ),

              ElevatedButton(onPressed: (){

              }, child: Text('Apartment'),
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.blue,
                    ),
                    minimumSize: Size(100, 30),
                    foregroundColor: Colors.blue
                ),),
              Text('Well furnished apartment',style: TextStyle(
                  fontSize: 15,
                  color: heading,
                  fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(CupertinoIcons.location_solid,color: textColor,),
                  Text(location,
                    style: TextStyle(
                        color: textColor
                    ),)
                ],
              ),
              SizedBox(width: 10,),



            ],
          ),
        ),
      ],
    );
  }
}
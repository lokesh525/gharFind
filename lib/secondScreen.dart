import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Positioned(
            right: 0,
              top: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(250, 250),

                ),
                child: Image.asset('assets/images/house2.jpeg',
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
                
              )),
          Positioned(
            top: 220,
              left: 20,
              child: Text('Welcome to\nGharSewa',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xff6200EA)
              ),)),
          Positioned(
            top: 400,
              left: 20,
              child: Text('What are you looking for ?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
                  color: Color(0xff6200EA)
              ),
              )),
          Positioned(
            top: 460,
              left: 26,
              child: Container(
                width: 350,
              child:  Column(
               children: [

                //color: Colors.red,

                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Property Search',
                    labelStyle: TextStyle(
                      fontSize: 23,
                      color: Color(0xff6200EA),
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: Icon(Icons.arrow_back_ios_outlined),

                  ),

                ),
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'Post Property',
                     labelStyle: TextStyle(
                       fontSize: 23,
                       color: Color(0xff6200EA),
                       fontWeight: FontWeight.w400,
                     ),
                     suffixIcon: Icon(Icons.arrow_back_ios_outlined),

                   ),
                 ),



            ],
          ))
          


      ),
      ]
    ),
    );
  }
}
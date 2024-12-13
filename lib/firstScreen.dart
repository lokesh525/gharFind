import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:untitled5/fifthScreen.dart';
import 'package:untitled5/navigator.dart';
import 'package:untitled5/secondScreen.dart';
import 'package:untitled5/third.dart';



class firstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                GradientIcon(
                    icon:Icons.home_filled,
                    size: 100,
                    gradient: LinearGradient(
                      colors: [Color(0xFFf6d365),Color(0xFFfda085)]
                    )
                ),
                Text("Ghar Sewa",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900
                ),
                ),
                Text('Find Better To Settle',
                style:TextStyle(
                  height:0.2,
                  color: Color(0xFFB0BEC5)
                ) ,
                ),
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.only(right: 50),
                    child: Text("Let's Find Your\nDream Real Estate",
                    style: TextStyle(
                      fontSize: 25
                    ),)),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(right: 80),
                  child: Text('Where dreams meet reality,\nFind your perfect property',
                  style: TextStyle(
                    color: Color(0xFFB0BEC5)
                  ),),
                ),
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.only(right: 120),

                  decoration: BoxDecoration(
                    gradient:LinearGradient(
                      colors: [Color(0xFFf6d365),Color(0xFFfda085)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,

                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainNavigator()));
                  },
                      child: Text('Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        height: 2.8
                      ),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    shadowColor: Colors.transparent,
                    backgroundColor: Colors.transparent

                  ),),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/house2.jpeg',
                      fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,),
                  ),
                )

              ],
            ),
          ),

        ),
      ),
    );

  }
}
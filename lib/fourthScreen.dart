
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:untitled5/navigation.dart';
class fourthScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    const arrName = ['Lokesh','Lokesh','Lokesh','Lokesh','Lokesh','Lokesh','Lokesh','Lokesh','Lokesh','Lokesh',];
    const arrLocation = ['chabhil','Lalitpur','chabhil','Lalitpur','chabhil','Lalitpur','chabhil','Lalitpur','chabhil','Lalitpur',];
    const Color tdBgColor = Color(0xFFEEEFF5);
    Color bgColor = Color(0xFF34495E);
    Color textColor = Color(0xff808B96);
    Color heading = Color(0xff154360);
    Color allText = Color(0xff909497);
    return Scaffold(

      appBar:PreferredSize(
        preferredSize: Size.fromHeight(90),

        child: AppBar(
          toolbarHeight: 110,
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 60,horizontal: 20),
              child: Text('Connect',
              style: TextStyle(
                fontSize: 27,
                color: bgColor,
                fontWeight: FontWeight.w600
              ),)),
        ),
      ),

      body: Column(
        children: [
          Container(
            height: 60,
            width: 320,

            decoration: BoxDecoration(
                color: bgColor,
              borderRadius: BorderRadius.circular(30),
      ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Agent'),
                ElevatedButton(onPressed: (){
                }, child: Text('')),
                Text('Inbox'),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 320,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 3,
                    spreadRadius: 2
                )
              ],
              color: tdBgColor,
            ),

            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                prefixIcon: Icon(Icons.search,
                  color: textColor),
                hintText: 'Search Agent',
                hintStyle:TextStyle(
                  color: textColor,

                ),

                border: InputBorder.none,
                constraints: BoxConstraints(
                  maxHeight: 20,
                  minWidth: 25
                )

              ),


            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Row(

              children: [
                Text('All Agents        ',style: TextStyle(
                  color: heading,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),),
                Text('Following',
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          SizedBox(height: 20,),

          Container(
            height: 40,
            width: 320,
            decoration:BoxDecoration(
                color: Color(0xffECF0F1),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 1,
                  spreadRadius:1,
                )
              ]
            ) ,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                suffixIcon: Icon(Icons.keyboard_arrow_down,

                ),
                suffixIconColor: textColor,
                border: InputBorder.none,
                hintText: 'Chabhil',
                hintStyle: TextStyle(
                  color: allText,

                )


              ),
            )
          ),
          SizedBox(height: 20,),
          Container(
            child: Expanded(

              child: ListView.separated(itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 50),
                  leading: Icon(Icons.account_circle,
                  size: 40,),
                  title: Text(arrName[index],
                  style: TextStyle(
                    color: heading,
                    fontWeight: FontWeight.w600
                  ),),
                  subtitle: Text(arrLocation[index%arrLocation.length]),
                  trailing: ElevatedButton(onPressed: (){},
                      child:Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person_add_alt_outlined,size: 20,color: heading,),
                          SizedBox(width: 8,),
                          Text('Follow',
                          style: TextStyle(
                            color: heading,
                            fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: heading
                      )

                    ), ),
                );

              }, separatorBuilder: (context, index) {
                return Divider(
                  height: 40,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                  color: Colors.black12,
                );

              },
                  itemCount: arrName.length,
              ),
            ),
          )


        ],
      ),
    );

  }
}
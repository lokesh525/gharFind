import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled5/navigation.dart';
import 'main.dart';

class thirdScreen extends StatefulWidget {
  static const arrImage = [
    'house2.jpeg',
    'house5.jpeg',
    'house6.jpeg',
    'house7.jpeg',
    'house8.jpeg',
  ];
  static const arrLocation = [
    '6-kathmandu,Nepal',
    '7-Lalitpur,Nepal',
    '8-bhaktpur,Nepal',
    'Gaudshala-8',
    'Chabol-9'
  ];
  static const prices = [
    'Rs.18k/night',
    'Rs.16k/day',
    'Rs.18k/night/day',
    'Rs.16k/day',
    'Rs.18k/night',
    'Rs.20k/day/night',
  ];

  @override
  State<thirdScreen> createState() => _thirdScreenState();
}

class _thirdScreenState extends State<thirdScreen> {
  Color bgColor = Color(0xFF980000);

  @override
  Widget build(BuildContext context) {
    const arrText = ['Well Furnished Apartment', 'Fully Decorated Apartment'];
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: appbar(),
      ),

      body: Center(
        child: Container(
          //margin: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              stack(),
              Container(
                  margin: EdgeInsets.only(top: 20), child: Text('John Doe')),
              Container(
                  margin: EdgeInsets.only(), child: Text('+977 9864329394')),
              Container(
                  margin: EdgeInsets.only(right: 210, top: 40),
                  child: Text(
                    'Activity History',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w500),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Viewed Property',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffd9d9d9)),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0000ff).withOpacity(0.9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Contracted Property',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff434343)),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Color(0xffefefef)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: thirdScreen.arrImage.length,
                itemBuilder: (context, index) {
                  return cont(
                      thirdScreen.arrImage[index], thirdScreen.arrLocation[index], thirdScreen.prices[index]);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      titleSpacing: 35,
      toolbarHeight: 110,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Account',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.settings,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget stack() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/images/lokesh.jpg'),
        ),
        Positioned(
            bottom: 3,
            right: 0,
            child: CircleAvatar(
              radius: 10,
              child: Icon(Icons.add_box_rounded),
            )),
      ],
    );
  }

  Widget cont(String image, location, prices) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 29),
          height: 320,
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xffefefef),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 02,
                blurRadius: 2,
                //offset: Offset(0,3)
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/$image',
                      width: 280,
                      height: 200,
                      fit: BoxFit.cover,
                    )),
                Stack(
                  children: [

                    Container(
                      margin: EdgeInsets.only(right: 150),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Apartment'),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: Color(0xff00ff00),
                            style: BorderStyle.solid,
                          ),
                          minimumSize: Size(100, 30),
                          foregroundColor: Color(0xff6aa84f),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 15,
                      child: Text(
                        prices,
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(right: 90),
                    child: Text(
                      'Well Furnished Apartment',
                      style: TextStyle(
                          color: bgColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 120),
                      child: Text(
                        location,
                        style: TextStyle(color: Color(0xff999999)),
                      ),
                    ),
                    Positioned(
                        right: 30, child: Icon(Icons.thumb_up_alt_outlined)),
                    Positioned(
                        right: -1,
                        child: Icon(
                          Icons.share,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(

     height: 20,
        )
      ],
    );
  }
}
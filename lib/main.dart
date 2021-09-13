

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp( MaterialApp(
      home:Profile()));
}
class Profile extends StatefulWidget{
  ProfileState createState()=> ProfileState();
}

class ProfileState extends State <Profile> {
  int _bottomNavIndex = 0;

  // This widget is the root of your application.
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override

  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xfffc0366),
        onPressed: (){

        },
        child: Icon(Icons.shopping_cart),
      ),

      bottomNavigationBar: BottomAppBar(
child: Container(
  height: 65,
  child: Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      FlatButton(onPressed: (){

      },
          padding: EdgeInsets.all(10.0),

          child: Column(
        children: [
          Icon(Icons.home,color: Colors.grey,),
          Text("Home",style: TextStyle(color: Colors.grey),)
        ],
      )),
      FlatButton(onPressed: (){

      },
          padding: EdgeInsets.all(10),

          child: Column(
            children: [
              Icon(Icons.navigation_rounded,color: Colors.grey,),
              Text("Discovery",style: TextStyle(color: Colors.grey),)
            ],
          )),
      FlatButton(onPressed: (){

      },

padding: EdgeInsets.only(left: 24,top: 10),
          child: Column(
            children: [
              Icon(Icons.star,color: Colors.grey,),
              Text("Favorite",style: TextStyle(color: Colors.grey),)
            ],
          )),
      FlatButton(onPressed: (){

      },
          padding: EdgeInsets.all(10.0),

          child: Column(
            children: [
              Icon(Icons.person,color: Colors.grey,),
              Text("Profile",style: TextStyle(color: Colors.grey),)
            ],
          )),

    ],
    

  ),
),


        color: Colors.white,
        elevation: 2.0,
        shape: CircularNotchedRectangle(),
      ),





  body:Container(
      height: 700,
                child: Stack(
                  alignment: Alignment.topCenter,
                   children: [
                     Container(
                       height: 170,
                       color: Color(0xfffc0366)),
                     Positioned(
                       bottom: 0,

                         child: Container(
                           margin: EdgeInsets.all(30),
                       height: 70,
                       color: Colors.green,
                     ))
                   ],

                 ),
                 // child: Column(
                 //   mainAxisAlignment: MainAxisAlignment.center,
                 //   children: [
                 //     Row(
                 //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 //         children:[
                 //           Text("Profile"),
                 //           Text("Edit"),
                 //         ]
                 //     ),
                 //     Stack(
                 //       children: [
                 //         Positioned(
                 //             child:
                 //         Container(
                 //           height: 100,
                 //           color: Colors.black,
                 //         )
                 //         )
                 //       ],
                 //
                 //     )
                 //
                 //   ],
                 // ),


                  ),







    //
    //
    //
    //
    //
    //       SizedBox(
    //         height: 18,
    //       ),
    //       Positioned(
    // bottom: 0,
    //     right: 0,
    //     child:  Card(
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
    //         ),
    //         margin: EdgeInsets.symmetric(horizontal: 13),
    //         child: ExpansionTile(
    //           title: Text("Payment cards",style: TextStyle(fontWeight: FontWeight.w700),),
    //           subtitle: Text("Add a credit or debit card",style: TextStyle(color: Colors.grey[700]),),
    //           trailing: Icon(Icons.arrow_forward_ios,size: 17,),
    //         ),
    //       ),
    //       ),
    //
    //       Divider(
    //         height: 1,
    //         thickness: 1,
    //         indent: 15,
    //         endIndent: 15,
    //         color: Colors.grey[400],
    //       ),
    //
    //       Card(
    //         margin: EdgeInsets.symmetric(horizontal: 13),
    //         child: ExpansionTile(
    //           title: Text("Address",style: TextStyle(fontWeight: FontWeight.w700),),
    //           subtitle: Text("Add or remove address",style: TextStyle(color: Colors.grey[700]),),
    //           trailing: Icon(Icons.arrow_forward_ios,size: 17,),
    //         ),
    //       ),
    //       Divider(
    //         height: 1,
    //         thickness: 1,
    //         indent: 15,
    //         endIndent: 15,
    //         color: Colors.grey[400],
    //       ),
    //       Card(
    //         margin: EdgeInsets.symmetric(horizontal: 13),
    //         child: ExpansionTile(
    //           title: Text("Refers Friends",style: TextStyle(fontWeight: FontWeight.w700),),
    //           subtitle: Text(r"Get $10.00 FREE",style: TextStyle(color: Color(0xfffc0366))),
    //           trailing: Icon(Icons.arrow_forward_ios,size: 17,),
    //         ),
    //       ),
    //       Divider(
    //         height: 1,
    //         thickness: 1,
    //         indent: 15,
    //         endIndent: 15,
    //         color: Colors.grey[400],
    //       ),
    //       Card(
    //         margin: EdgeInsets.symmetric(horizontal: 13),
    //         child: ExpansionTile(
    //           leading: Icon(CupertinoIcons.question_circle_fill,color:Color(0xfffc0366) ,),
    //           title: Text("Delivery support"),
    //           trailing: Icon(Icons.arrow_forward_ios,size: 17,),
    //         ),
    //       ),
    //       Divider(
    //         height: 1,
    //         thickness: 1,
    //         indent: 15,
    //         endIndent: 15,
    //         color: Colors.grey[400],
    //       ),
    //       Card(
    //         margin: EdgeInsets.symmetric(horizontal: 13),
    //         child: ExpansionTile(
    //           leading: Icon(Icons.settings,color: Color(0xff2572f7),),
    //           title: Text("Setting",),
    //           trailing: Icon(Icons.arrow_forward_ios,size: 17,),
    //
    //         ),
    //       ),




       // Stack(
       //      children: [
       //        Positioned(
       //          bottom: 0,
       //          left: 0,
       //          child: Container(
       //            width: size.width,
       //            height: 65,
       //            child: Stack(
       //              overflow: Overflow.visible,
       //              children: [
       //                CustomPaint(
       //                  size: Size(size.width, 80),
       //                  painter: BNBCustomPainter(),
       //                ),
       //                Center(
       //                  heightFactor: 0.6,
       //                  child: FloatingActionButton(backgroundColor: Colors.red, child: Icon(Icons.shopping_basket), elevation: 0.1, onPressed: () {}),
       //                ),
       //                Container(
       //                  width: size.width,
       //                  height: 80,
       //                  child: Row(
       //                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       //                    children: [
       //                      IconButton(
       //                        icon: Icon(
       //                          Icons.home,
       //                          color: currentIndex == 0 ? Colors.red : Colors.grey.shade400,
       //                        ),
       //
       //                        onPressed: () {
       //                          setBottomBarIndex(0);
       //                        },
       //                        splashColor: Colors.white,
       //                      ),
       //                      IconButton(
       //                          icon: Icon(
       //                            Icons.restaurant_menu,
       //                            color: currentIndex == 1 ? Colors.red : Colors.grey.shade400,
       //
       //                          ),
       //                          onPressed: () {
       //                            setBottomBarIndex(1);
       //                          }),
       //                      Container(
       //                        width: size.width * 0.20,
       //                      ),
       //                      IconButton(
       //                          icon: Icon(
       //                            Icons.bookmark,
       //                            color: currentIndex == 2 ? Colors.red : Colors.grey.shade400,
       //                          ),
       //                          onPressed: () {
       //                            setBottomBarIndex(2);
       //                          }),
       //                      IconButton(
       //                          icon: Icon(
       //                            Icons.notifications,
       //                            color: currentIndex == 3 ? Colors.red : Colors.grey.shade400,
       //                          ),
       //                          onPressed: () {
       //                            setBottomBarIndex(3);
       //                          }),
       //                    ],
       //                  ),
       //                )
       //              ],
       //            ),
       //          ),
       //        )
       //      ],
       //    )





    );
    
  }
}

// class BNBCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = new Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;
//
//     Path path = Path();
//     path.moveTo(10, 10); // Start
//     path.quadraticBezierTo(size.width * 0.0, 0, size.width * 0.0, 0);
//     path.quadraticBezierTo(size.width * 0.0, 0, size.width * 0.40, 20);
//     path.arcToPoint(Offset(size.width * 0.20, 20), radius: Radius.circular(10.0), clockwise: false);
//     path.quadraticBezierTo(size.width * 0.20, 20, size.width * 0.65, 0);
//     path.quadraticBezierTo(size.width * 0.20, 0, size.width, 20);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//     path.lineTo(0, 0);
//     canvas.drawShadow(path, Colors.black, 5, true);
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }


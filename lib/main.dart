

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

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
    final Size size = MediaQuery.of(context).size;

    var List = [Icons.home,Icons.camera_alt,Icons.arrow_forward,Icons.camera,];
    return Scaffold(

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: AnimatedBottomNavigationBar.builder(
      //   itemCount: List.length,
      //   tabBuilder: (int index, bool isActive) {
      //     final color = isActive ? Color(0xffFFA400) : Colors.white;
      //     return Column(
      //       mainAxisSize: MainAxisSize.min,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Icon(
      //           List[index],
      //           size: 24,
      //           color: color,
      //         ),
      //         const SizedBox(height: 4),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 8),
      //           child: Text(
      //             "brightness $index",
      //             maxLines: 1,
      //             style: TextStyle(color: color),
      //
      //
      //           ),
      //         ),
      //
      //
      //
      //       ],
      //     );
      //   },
      //   backgroundColor: Color(0xff373A36),
      //   activeIndex: _bottomNavIndex,
      //   splashColor: Color(0xffFFA400),
      //   // notchAndCornersAnimation: animation,
      //   splashSpeedInMilliseconds: 300,
      //   notchSmoothness: NotchSmoothness.defaultEdge,
      //   gapLocation: GapLocation.center,
      //   leftCornerRadius: 32,
      //   rightCornerRadius: 32,
      //   onTap: (index) => setState(() => _bottomNavIndex = index),
      // ),
      //
      //
      //
      //
      //
      //
      //
      //


      body:
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors:[Color(0xfffc0366),Color(0xfffc0366)]
              )
            ),
            child: Container(
              width: double.infinity,
              height: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("  Profile",style: TextStyle(fontSize: 26,color: Colors.white),),
                  Text("Edit   ",style: TextStyle(color: Colors.white),),

                ],


              ),



              
            ),

            
            
          ),


          SizedBox(
            height: 18,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
            ),
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: ExpansionTile(
                title: Text("Payment cards",style: TextStyle(fontWeight: FontWeight.w700),),
              subtitle: Text("Add a credit or debit card",style: TextStyle(color: Colors.grey[700]),),
              trailing: Icon(Icons.arrow_forward_ios,size: 17,),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.grey[400],
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: ExpansionTile(
              title: Text("Address",style: TextStyle(fontWeight: FontWeight.w700),),
              subtitle: Text("Add or remove address",style: TextStyle(color: Colors.grey[700]),),
              trailing: Icon(Icons.arrow_forward_ios,size: 17,),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.grey[400],
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: ExpansionTile(
              title: Text("Refers Friends",style: TextStyle(fontWeight: FontWeight.w700),),
              subtitle: Text(r"Get $10.00 FREE",style: TextStyle(color: Color(0xfffc0366))),
              trailing: Icon(Icons.arrow_forward_ios,size: 17,),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.grey[400],
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: ExpansionTile(
              leading: Icon(CupertinoIcons.question_circle_fill,color:Color(0xfffc0366) ,),
              title: Text("Delivery support"),
              trailing: Icon(Icons.arrow_forward_ios,size: 17,),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.grey[400],
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: ExpansionTile(
              leading: Icon(Icons.settings,color: Color(0xff2572f7),),
              title: Text("Setting",),
              trailing: Icon(Icons.arrow_forward_ios,size: 17,),
            ),
          ),
          Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: size.width,
                  height: 80,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      CustomPaint(
                        size: Size(size.width, 80),
                        painter: BNBCustomPainter(),
                      ),
                      Center(
                        heightFactor: 0.6,
                        child: FloatingActionButton(backgroundColor: Colors.orange, child: Icon(Icons.shopping_basket), elevation: 0.1, onPressed: () {}),
                      ),
                      Container(
                        width: size.width,
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.home,
                                color: currentIndex == 0 ? Colors.orange : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(0);
                              },
                              splashColor: Colors.white,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.restaurant_menu,
                                  color: currentIndex == 1 ? Colors.orange : Colors.grey.shade400,

                                ),
                                onPressed: () {
                                  setBottomBarIndex(1);
                                }),
                            Container(
                              width: size.width * 0.20,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.bookmark,
                                  color: currentIndex == 2 ? Colors.orange : Colors.grey.shade400,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(2);
                                }),
                            IconButton(
                                icon: Icon(
                                  Icons.notifications,
                                  color: currentIndex == 3 ? Colors.orange : Colors.grey.shade400,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(3);
                                }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )





        ],
      ),

    );
    
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Start
    path.quadraticBezierTo(size.width * 0.0, 0, size.width * 0.0, 0);
    path.quadraticBezierTo(size.width * 0.0, 0, size.width * 0.0, 0);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.30, 20, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    path.lineTo(0, 0);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


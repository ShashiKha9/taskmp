


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
      home:Profile()));
}
class Profile extends StatefulWidget{
  ProfileState createState()=> ProfileState();
}

class ProfileState extends State <Profile> {
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
setState(() {
  currentIndex=0;
});
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
          Icon(Icons.home,color:  currentIndex == 0 ?Color(0xfffc0366): Colors.grey,),
          Text("Home",style: TextStyle(color: currentIndex == 0 ?Color(0xfffc0366): Colors.grey,),)
        ],
      )),
      FlatButton(onPressed: (){
        setState(() {
          currentIndex= 1;
        });

      },
          padding: EdgeInsets.only(right: 14,top: 10),

          child: Column(
            children: [
              Icon(Icons.navigation_rounded,color: currentIndex == 1 ?Color(0xfffc0366): Colors.grey,),
              Text("Discovery",style: TextStyle(color: currentIndex == 1 ?Color(0xfffc0366): Colors.grey,),)
            ],
          )),
      FlatButton(onPressed: (){
setState(() {
  currentIndex=2;
});
      },

padding: EdgeInsets.only(left: 24,top: 10),
          child: Column(
            children: [
              Icon(Icons.star,color: currentIndex == 2 ?Color(0xfffc0366): Colors.grey,),
              Text("Favorite",style: TextStyle(color: currentIndex == 2 ?Color(0xfffc0366): Colors.grey,),)
            ],
          )),
      FlatButton(onPressed: (){
setState(() {
  currentIndex= 3;
});
      },
          padding: EdgeInsets.all(10.0),

          child: Column(
            children: [
              Icon(Icons.person,color: currentIndex == 3 ? Color(0xfffc0366): Colors.grey,),
              Text("Profile",style: TextStyle(color: currentIndex == 3 ?Color(0xfffc0366): Colors.grey,),)
            ],
          )),

    ],
    

  ),
),


        color: Colors.white,
        elevation: 2.0,
        shape: CircularNotchedRectangle(),
      ),




body:SingleChildScrollView(
  child:Container(
      height: 630,
                child: Column(
                  children: [
               SizedBox(
                  height: 250,
                 child:   Stack(
                  alignment: Alignment.topCenter,
                   children: [
                     Container(
                       height: 170,
                       color: Color(0xfffc0366)),
                   Padding(padding: EdgeInsets.symmetric(vertical: 40)),
                     Positioned(
                       left: 20,
                       top: 51,
                       child: Row(
                           children:[
                             Text("Profile",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.white),),
                             Text("                                                              Edit",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white)),
                           ]
                       ),
                     ),

                     Positioned(
                       top: 100.0,
                         child: Container(
                       height: 150,
                       width: 340,
                           child: Card(
                               elevation: 10,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(8)
                               ),
                             child:new Stack(
                               children: <Widget>[
                                 Positioned(
                                     left: 16.0,
                                     top: 20.0,
                                     child: CircleAvatar(

                                       radius: 32,
                                       backgroundImage: NetworkImage("https://www.nicepng.com/png/detail/780-7805650_generic-user-image-male-man-cartoon-no-eyes.png"),
                                     )
                                 ),
                                 Column(
                                   children: [
                                     SizedBox(
                                       height: 100,
                                     ),
                                        Divider(
                                           height: 1,

                                         )



                                   ],
                                     ),
                                 Positioned(
                                   left: 93,
                                   top: 35,
                                   child: Column(
                                     children: [
                                       Wrap(
                                         children: [
                                           Text("Recardo McDonald",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                           Icon(Icons.check_circle,color: Colors.lightGreenAccent,)
                                         ],
                                       ),

                                       Text("jeetebe@gmail.com        ",style: TextStyle(fontSize: 14),),



                                     ],
                                   ),

                                 ),

                                 Positioned(
                                     left: 16,
                                     top: 107,
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Account credit",style: TextStyle(color: Colors.grey),),
                                         Text( r"                              $52.25",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),)
                                       ],
                                     ))

                               ],
                             )







                         ),











                     )),

                     



                   ],



                 ),











                  ),

                          SizedBox(
                            height: 20,
                          ),
                          Positioned(
                    bottom: 0,
                        right: 0,
                        child:  Card(
                          elevation: 10,
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
                          ),

                          Divider(
                            height: 1,
                            indent: 15,
                            endIndent: 15,
                            color: Colors.grey[200],
                          ),

                          Card(
                            elevation: 10,
                            margin: EdgeInsets.symmetric(horizontal: 13),
                            child: ExpansionTile(
                              title: Text("Address",style: TextStyle(fontWeight: FontWeight.w700),),
                              subtitle: Text("Add or remove address",style: TextStyle(color: Colors.grey[700]),),
                              trailing: Icon(Icons.arrow_forward_ios,size: 17,),
                            ),
                          ),
                          Divider(
                            height: 1,
                            indent: 15,
                            endIndent: 15,
                            color: Colors.grey[200],

                          ),
                          Card(
                            elevation: 10,
                            margin: EdgeInsets.symmetric(horizontal: 13),
                            child: ExpansionTile(
                              title: Text("Refers Friends",style: TextStyle(fontWeight: FontWeight.w700),),
                              subtitle: Text(r"Get $10.00 FREE",style: TextStyle(color: Color(0xfffc0366))),
                              trailing: Icon(Icons.arrow_forward_ios,size: 17,),
                            ),
                          ),
                          Divider(
                            height: 1,
                            indent: 15,
                            endIndent: 15,
                            color: Colors.grey[200],

                          ),
                          Card(
                            elevation: 10,
                            margin: EdgeInsets.symmetric(horizontal: 13),
                            child: ExpansionTile(
                              leading: Icon(CupertinoIcons.question_circle_fill,color:Color(0xfffc0366) ,),
                              title: Text("Delivery support"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 17,),
                            ),
                          ),
                          Divider(
                            height: 1,
                            indent: 15,
                            endIndent: 15,
                            color: Colors.grey[200],

                          ),
                          Card(
                            elevation: 10,
                            margin: EdgeInsets.symmetric(horizontal: 13),
                            child: ExpansionTile(
                              leading: Icon(Icons.settings,color: Color(0xff2572f7),),
                              title: Text("Setting",),
                              trailing: Icon(Icons.arrow_forward_ios,size: 17,),

                            ),
                          ),










]
                )
  )
)
    );
    
  }
}




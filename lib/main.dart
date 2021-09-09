

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp( MaterialApp(
      home:Profile()));
}
class Profile extends StatefulWidget{
  ProfileState createState()=> ProfileState();
}

class ProfileState extends State <Profile> {
  int pageindex = 0;

  // This widget is the root of your application.
  onTabTapped( index) {
    setState(() {

      pageindex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PersistentBottomNavBar(
      navBarStyle: NavBarStyle.style15,

      ),


    //     items: [
    // Icon(CupertinoIcons.map_pin_ellipse,size: 30,semanticLabel:"suhf",),
    //       Icon(Icons.shopping_cart,size: 30,color: Colors.white,),
    //       Icon(Icons.star,size: 30,),
    //  Icon(Icons.person),
    //   ],
    //     onTap: (index) {
    //       setState() {
    //         pageindex = index;
    //       }
    //     }
    //   ),
      body: Column(
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





        ],
      ),

    );
    
  }
}


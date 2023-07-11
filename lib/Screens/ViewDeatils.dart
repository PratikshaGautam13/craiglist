import 'package:craiglist/Screens/Location.dart';
import 'package:flutter/material.dart';

import 'Images.dart';


class ViewDetails extends StatefulWidget {
  ViewDetails({Key? key,}) : super(key: key);


  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails>
    with SingleTickerProviderStateMixin {
  bool loaded = false;

  @override
  void initState() {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // loaded
      //     ?
      CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                   color:Colors.black.withOpacity(0.4),
                ),
                child: Text("Car Hud Part",
                    textScaleFactor: .5,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
              ),
              background: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.9), BlendMode.dstATop),
                      image: NetworkImage("https://www.oldcarsweekly.com/.image/t_share/MTc4Mzk2MjM0NTg5OTM5MzA5/img_9786a.jpg"),
                    )
                ),
                // child: Image.network(data.feature_image,)
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.only(left:10,top:10),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Color(0xFF8A2FAD),
                              Color(0xFFC83DEC),
                            ])
                        ),
                        // margin: EdgeInsets.only(right:10,top:10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.call,color:Colors.white,size: 18,)),
                            Container(
                                padding: EdgeInsets.all(10),
                                height: 15,
                                width: 2,
                                color:Colors.white
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.message_rounded,color:Colors.white,size: 18,)),
                            Container(
                                padding: EdgeInsets.all(10),
                                height: 15,
                                width: 2,
                                color:Colors.white
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.share,color:Colors.white,size: 18,)),
                          ],
                        ),
                      ),
                     Expanded(child: Text("")),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Images()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(right:10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(colors: [
                                  Color(0xFF8A2FAD),
                                  Color(0xFFC83DEC),
                                ])
                            ),
                            child: Text("More Image",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold))
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left:10),
                  child: Row(
                    children: [
                      Icon(Icons.location_on,size:20,color:Colors.grey),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          child: Text("Bonita , San Diego",style: TextStyle(color: Colors.black,fontSize: 13))
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left:20),
                  child: Text("Description  : ",
                      style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 14)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left:20,right:30),
                  child: Text("I have 2 1956 Chevrolet Belairs both for one price. These are total PROJECT CARS. Obviously neither car runs or drives. READ the description before you ask a question."
                      "Cars have nice uncut dashes.The 4 door still has the original 265 V-8 with a Manual trans set up. The 4 door has a very good frame under it but the 2 door car's frame is toast(rusted) but the body is pretty solid and restorable. I have a good front and rear glass for the 2 door and lots of stainless trim,head lights, tail lights,flippers ect.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black,fontSize: 12)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left:20),
                  child: Text("Again neither car runs or drives.",
                      style: TextStyle(color: Colors.black,fontSize: 12)),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.only(left:20),
                  child: Text("55 56 57 Camaro chevelle malibu",
                      style: TextStyle(color: Colors.black,fontSize: 12)),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.only(left:20),
                  child: Text("3500.00 for both cars and all the parts I have for these. Cash ONLY and you come pick them up.",
                      style: TextStyle(color: Colors.black,fontSize: 12)),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.only(left:20),
                  child: Text("Call between 8am thru 11pm Please",
                      style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 100,
                )

              ]))
        ],
      ),
      //     : CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       expandedHeight: 150.0,
      //       floating: true,
      //       pinned: true,
      //       flexibleSpace: FlexibleSpaceBar(),
      //     ),
      //     // SliverList(
      //     //     delegate: SliverChildListDelegate([
      //     //       cardSkel(),
      //     //     ])),
      //   ],
      // ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Location()));
      // Add your onPressed code here!
      },
        backgroundColor: Color(0xFF9E32DD),
           child:  Icon(Icons.location_on,color:Colors.white),
    ),
    );
  }

  Widget singleCard(double value, double height, double width) {
    return Opacity(
      opacity: value,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
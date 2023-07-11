
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppConstants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          color:Colors.white,
          child: Column(
            children: [
              AppBarContainer(context,"Profile"),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: CircleAvatar(
                  radius: 80,
                  // child: Icon(Icons.person),
                  // backgroundColor:Colors.grey,
                  backgroundImage: NetworkImage("https://www.homeaway.com/bizops/travelerHome/picturePublicPathByAccount?accountUuid=2da8b4c8-43a6-4c0a-b039-35e0f48c8c66&pictureSize=large"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Alex Desuza",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                ),
              ),
              Container(
                child: Text(
                  "alex@gmail.com",
                  style: TextStyle(fontSize: 12,color:Colors.grey),
                ),),
              SizedBox(
                height: 20,
              ),

            ],
          ),
        )
    );
  }
}

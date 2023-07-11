import 'package:flutter/material.dart';

import '../AppConstants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: primaryClr,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            currScreen = index;
            setState(() {});
          },
          currentIndex: currScreen,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 25,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 25,
              ),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                size: 25,
              ),
              label: "Post",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 25,
              ),
              label: "Profile",
            ),
          ],
        ),
        body: renderScreen());
  }

  Widget renderScreen() {
    if (currScreen == 0) return HomeScreenContainer();
    return Container(
      height: 300,
      color: Colors.grey,
    );
  }
}

class HomeScreenContainer extends StatefulWidget {
  const HomeScreenContainer({Key? key}) : super(key: key);

  @override
  State<HomeScreenContainer> createState() => _HomeScreenContainerState();
}

class _HomeScreenContainerState extends State<HomeScreenContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          gapPadding: 0,
                          borderRadius: BorderRadius.circular(40)),
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                      hintText: "Search by area, material, ...",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.tune))),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        )),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 0),
            children: [
              // SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bonita ,San Diego",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "Car Hud Part",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Text(
                            "10 min ago",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        child: Image.network(
                          "https://www.oldcarsweekly.com/.image/t_share/MTc4Mzk2MjM0NTg5OTM5MzA5/img_9786a.jpg",
                          fit: BoxFit.fill,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline_rounded)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.reply)),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: primaryClr.withOpacity(.3),
                              borderRadius: BorderRadius.circular(4)),
                          height: 40,
                          margin: EdgeInsets.only(right: 10),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "View Details",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              //
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bonita ,San Diego",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "Rusty wheel chair",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Text(
                            "2 Hours ago",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        child: Image.network(
                          "https://media.istockphoto.com/id/462837387/photo/abandoned-wheelchair-in-derelict-building.jpg?s=612x612&w=0&k=20&c=0U4jOnYs4mUo8_yq2kv-SwXFdL-XIuTmdHpR728RlO8=",
                          fit: BoxFit.fill,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

import '../AppConstants.dart';
import 'ViewDeatils.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarContainer(context, "My Favourites"),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 0),
              children: [
                for (var i in data)
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
                                    i["loc"],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    i["title"],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Text(
                                i["time"],
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
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
                              i["image"],
                              fit: BoxFit.fill,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              alignment: WrapAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: primaryClr,
                                    )),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.reply,
                                    color: Colors.black,
                                  ),
                                  label: Text(
                                    "Share",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                // width: 200,
                                decoration: BoxDecoration(
                                    // color: Color(0xFFF34E0E),
                                    gradient: LinearGradient(colors: [
                                      Color(0xFF8A2FAD),
                                      Color(0xFFE06CFB),
                                    ]),
                                    borderRadius: BorderRadius.circular(8)),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.transparent),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ViewDetails()));
                                    },
                                    child: Text("View Details"))),

                            // Container(
                            //   decoration: BoxDecoration(
                            //       color: primaryClr.withOpacity(.3),
                            //       borderRadius: BorderRadius.circular(4)),
                            //   height: 40,
                            //   margin: EdgeInsets.only(right: 10),
                            //   child: TextButton(
                            //       onPressed: () {
                            //         Navigator.of(context).push(MaterialPageRoute(
                            //             builder: (context) => ViewDetails()));
                            //       },
                            //       child: Text(
                            //         "View Details",
                            //         style: TextStyle(
                            //             color: Colors.white,
                            //             fontWeight: FontWeight.w700),
                            //       )),
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List data = [
  {
    "loc": "Bonita, San Diego",
    "title": "Car Hud Part",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbzOJLwYLrXyWevSinFp_4HIrn_eITEm2hO6PWo-FhSRO2Gl4oPoq-RrrBGUIWH4RtWbw&usqp=CAU",
    "time": "3 Hours ago"
  },
  {
    "loc": "Bonita, San Diego",
    "title": "Engine Block",
    "image":
        "https://www.motortrend.com/uploads/sites/21/2019/07/Engine-Electrolysis-Cleaning69.jpg?interpolation=lanczos-none&fit=around%7C660:440",
    "time": "8 Hours ago"
  },
];

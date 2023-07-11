import 'package:craiglist/AppConstants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key, this.callback}) : super(key: key);

  final callback;
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> materialType = [
    "Glass",
    "Paper",
    "Metal",
    "Plastic",
    "textile",
    "Electronic",
    "Other"
  ];

  bool nearByMe = true;

  List<bool> filterMaterial = List.generate(7, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Select Location",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: -4),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.search),
                              hintStyle: TextStyle(fontSize: 12),
                              hintText: "Search city, area or neighbourhood"),
                        ),
                      ),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.my_location),
                          label: Text("Use current location")),
                      Divider(),
                      Text(
                        "Recently used",
                        style: TextStyle(fontSize: 12),
                      ),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          label: Text(
                            "San Francisco, California",
                            style: TextStyle(color: Colors.black),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          label: Text(
                            "San Diego, California",
                            style: TextStyle(color: Colors.black),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          label: Text(
                            "San Jose, California",
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select material type",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: [
                          for (var i = 0; i < materialType.length; i++)
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: FilterChip(
                                showCheckmark: false,
                                selectedColor: primaryClr,
                                labelStyle: filterMaterial[i]
                                    ? TextStyle(color: Colors.white)
                                    : TextStyle(),
                                selected: filterMaterial[i],
                                disabledColor: Colors.grey.withOpacity(.5),
                                label: Text(
                                  "${materialType[i]}",
                                ),
                                onSelected: (bool value) {
                                  filterMaterial[i] = value;
                                  setState(() {});
                                },
                              ),
                            ),
                        ],
                      ),
                      Container()
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
              child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 200,
                    decoration: BoxDecoration(
                        // color: Color(0xFFF34E0E),
                        gradient: LinearGradient(colors: [
                          Color(0xFF8A2FAD),
                          Color(0xFFE06CFB),
                        ]),
                        borderRadius: BorderRadius.circular(8)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: Colors.transparent),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Search"))),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

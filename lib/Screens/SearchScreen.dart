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
      body: ListView(
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
                    child: IconButton(
                        onPressed: () {
                          widget.callback(true);
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_forward_ios))),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Location",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                CheckboxListTile(
                  value: nearByMe,
                  activeColor: primaryClr,
                  onChanged: (val) {
                    nearByMe = val ?? false;
                    setState(() {});
                  },
                  title: Text("Near by me"),
                ),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Text(
                      " - Or - ",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Expanded(child: Divider()),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Country",
                    ),
                    Chip(
                        label: Wrap(
                      // alignment: WrapAlignment.start,
                      // runAlignment: WrapAlignment.start,
                      // crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        Text("United States"),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    )),
                    Container()
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City",
                    ),
                    Chip(
                        label: Wrap(
                      // alignment: WrapAlignment.start,
                      // runAlignment: WrapAlignment.start,
                      // crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        Text("California"),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    )),
                    Container()
                  ],
                ),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
    );
  }
}

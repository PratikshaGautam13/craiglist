import 'package:flutter/material.dart';

import '../AppConstants.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.grey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image_outlined,
                      size: 30,
                    ),
                    Text(
                      "Select Images",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "(Tap to choose image)",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CTextInput("Enter Title"),
            SizedBox(
              height: 10,
            ),
            CTextInput("Enter description", minLines: 3, maxLines: 5),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Material Type",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    decoration: CcardDecoration(),
                    child: DDMenuItem(
                        name: "Glass",
                        dataSource: [
                          "Glass",
                          "Paper",
                          "Metal",
                          "Plastic",
                          "textile",
                          "Electronic",
                          "Other"
                        ],
                        index: 0,
                        title: "Select Material Type",
                        callback: (t, v) {}),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Location",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    padding: EdgeInsets.symmetric(vertical: 2),
                    decoration: CcardDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.my_location),
                            label: Text("Use current location")),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: primaryClr,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width - 40,
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
                    onPressed: () {},
                    child: Text("Post"))),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

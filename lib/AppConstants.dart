import 'package:flutter/material.dart';

int primaryClrCode = 0xFF9E32DD;
Color primaryClr = Color(0xFF9E32DD);

Widget AppBarContainer(BuildContext context, String title) {
  return Container(
    height: 150,
    decoration: BoxDecoration(
        // color: Color(0xFFF34E0E),
        gradient: LinearGradient(colors: [
      Color(0xFF8A2FAD),
      Color(0xFFE06CFB),
    ])
        // borderRadius: BorderRadius.circular(20)
        ),
    child: Stack(
      children: [
        Positioned(
          top: 130,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(80)),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    )),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "$title",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

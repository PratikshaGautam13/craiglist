import 'package:craiglist/AppConstants.dart';
import 'package:craiglist/Screens/Location.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  List<String> planDetails = ["Ideal to Discover location", "Additional Perks"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBarContainer(context, "Select Subscription"),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 0),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: primaryClr),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1, 1),
                            blurRadius: 4)
                      ]),
                  child: Column(
                    children: [
                      Text(
                        "Pro",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //
                            //   ],
                            // ),
                            for (var i in planDetails)
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor:
                                          primaryClr.withOpacity(.05),
                                      radius: 15,
                                      child: Icon(
                                        Icons.check,
                                        color: primaryClr,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("$i")
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\$10 ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "per month",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                                  elevation: 0,
                                  backgroundColor: Colors.transparent),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Location()));
                              },
                              child: Text("Purchase")))
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

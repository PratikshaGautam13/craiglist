import 'package:craiglist/AppConstants.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          appBar(context, "Select Subscription"),
          Expanded(
            child: ListView(
              children: [
                Container(
                  // height: 300,
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
                        "Basic",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      for (var i = 0; i < 1; i++)
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: primaryClr.withOpacity(.05),
                                radius: 15,
                                child: Icon(
                                  Icons.check,
                                  color: primaryClr,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Ideal to Discover location")
                            ],
                          ),
                        ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "\$10",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
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
                              onPressed: () {},
                              child: Text("Purchase")))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

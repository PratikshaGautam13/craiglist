import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 0),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFF8A2FAD),
                    Color(0xFFE06CFB),
                  ])
              ),
              child:Container(
                  margin: EdgeInsets.only(top:30,left:5),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                            child: Icon(Icons.arrow_back,size:25,color:Colors.white)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Location",style: TextStyle(color: Colors.white,fontSize: 20)),
                      Expanded(child: Text("")),
                      Container(
                          margin: EdgeInsets.only(right:5),
                          child: Icon(Icons.location_on,size:25,color:Colors.white)),
                    ],
                  )
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height-50,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 400,
                      margin: EdgeInsets.only(left:10,right: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.9), BlendMode.dstATop),
                            image: NetworkImage("https://tlpmadrid.com/wp-content/uploads/2021/07/Captura-de-pantalla-51.png"),
                          )),
                      // child: Image.network(data.feature_image,)
                    ),
                    Container(
                        margin: EdgeInsets.only(left:10),
                        child: Text("Bonita , San Diego",style: TextStyle(color: Colors.black))
                    ),
                    Container(
                        margin: EdgeInsets.only(left:10),
                        child: Text("Street No - 78 , Block - H",style: TextStyle(color: Colors.grey))
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        margin: EdgeInsets.only(left:10),
                        child: Text("Related",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold))
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Card("https://i.pinimg.com/originals/c0/8f/4f/c08f4f8847d57cca49099aaa8426a490.jpg","Acme Plc House"," Street no -908"),
                          Card("https://th.bing.com/th/id/OIP.tP7fnOVdHG2JfVezhzBo6AHaEX?pid=ImgDet&rs=1","3 high Street"," Street no -908"),
                          Card("https://www.oldcarsweekly.com/.image/t_share/MTc4Mzk2MjM0NTg5OTM5MzA5/img_9786a.jpg","Bonita , San Diego","Street no- 67")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      )
    );
  }

  Widget Card(String img,String title,String label)
  {
    return Container(
      height: 155,
      width: 170,
      margin: EdgeInsets.only(top:10,left:10,bottom: 10),
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                offset: Offset(0,1),
                color: Colors.grey,
                blurRadius: 1
            )
          ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left:5,right: 5,top: 5),
            child: Image.network(
              img,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              margin: EdgeInsets.only(left:10),
              child: Text(title,style: TextStyle(color: Colors.black,fontSize: 12))
          ),
          Container(
            margin: EdgeInsets.only(left:5),
            child: Row(
              children: [
                Icon(Icons.location_on,size:18,color:Colors.grey),
                Container(
                    child: Text(label,style: TextStyle(color: Colors.grey,fontSize: 12))
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

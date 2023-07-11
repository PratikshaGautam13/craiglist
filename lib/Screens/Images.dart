import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../AppConstants.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color:Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(left:10,right:10),
                  child: ImageSlideshow(
                    // width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height-300,
                    indicatorColor: Colors.white,
                    onPageChanged: (value) {
                      debugPrint('Page changed: $value');
                    },
                    autoPlayInterval: 3000,
                    isLoop: true,
                    children: [
                      Image.network(
                        'https://www.oldcarsweekly.com/.image/t_share/MTc4Mzk2MjM0NTg5OTM5MzA5/img_9786a.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://i.pinimg.com/originals/0f/c8/e5/0fc8e5b0c3dbed4a9e4982817c765089.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://th.bing.com/th/id/R.ab85a446e5b06f2cce8a94da5f272292?rik=gfxZ9%2bAqq9oLMg&riu=http%3a%2f%2fwww.2040-cars.com%2f_content%2fcars%2fimages%2f69%2f720869%2f001.jpg&ehk=cRg2fVcTT3ViMTJHQbjWbewW%2bngOWHjowum8pHjJfLQ%3d&risl=&pid=ImgRaw&r=0',
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://th.bing.com/th/id/R.4c97a181ebefc1be0fccb7f518b05916?rik=mggUrZdelY6lbQ&riu=http%3a%2f%2fwww.forwardlook.net%2fforums%2fforums%2fget-attachment.asp%3faction%3dview%26attachmentid%3d40036&ehk=9oWGnLJ9x9iFhH%2bhcTyU5ygWOE3396WOjwM9dD5ausQ%3d&risl=&pid=ImgRaw&r=0',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
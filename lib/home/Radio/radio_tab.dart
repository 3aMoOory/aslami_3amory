import 'package:aslami_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 100),
              child: Container(
                child:
                    Image(image: AssetImage('assets/images/radio_image.png')),
              ),),
            SizedBox(
              height: 20,
            ),
            const Text('إذاعة القرآن الكريم',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 30),
              child: Container(
                  color: Colors.transparent,
                  height: 70,
                  width: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: IconButton(
                          color: MyThemeData.PrimaryColor,
                          onPressed: () {},
                          icon: Icon(Icons.skip_previous),iconSize: 50,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          color: MyThemeData.PrimaryColor,
                          onPressed: () {},
                          icon: Icon(Icons.play_arrow),iconSize: 50,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          color: MyThemeData.PrimaryColor,
                          onPressed: () {},
                          icon: Icon(Icons.skip_next),iconSize: 50,
                        ),
                      ),

                    ],
                  )),
            )
          ],
        )
      ],
    );
  }
}

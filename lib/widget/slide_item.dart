import 'package:flutter/material.dart';

import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 500,
          height: 400,
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(slideList[index].imageUrl),
              fit: BoxFit.fitHeight,


            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          slideList[index].title,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        // Text(
        //   slideList[index].description,
        //   style:  TextStyle(
        //       fontSize: 14,color: Colors.white
        //   ),
        //   textAlign: TextAlign.center,
        // ),
      ],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_shopee/utils/utils.dart';

class CardDetails extends StatelessWidget{
  late final String backgroundImg;
  late final String title;
  late final double width;

  CardDetails({required this.backgroundImg,required this.title,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.rpx),
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(backgroundImg)
        ),
        borderRadius: BorderRadius.circular(10.rpx)
      ),
      child: Center(
        child: Text(title,style: TextStyle(color: Colors.white,fontSize: 30),),
      ),
    );
  }

}
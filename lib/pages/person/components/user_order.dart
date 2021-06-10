import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopee/components/container_component.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_shopee/utils/utils.dart';

class UserOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4.rpx),
      width: ScreenUtil.screenWidth !* 0.96,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.rpx)
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.rpx),
            child: Text("我的订单"),
          ),
          Divider(height: 1,color: Colors.black,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  color: Color.fromARGB(255, 2, 149, 218),
                  child: Padding(
                    padding: EdgeInsets.all(6.rpx),
                    child: Center(
                      child: Text("待付款"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 118, 197, 236),
                  child: Padding(
                    padding: EdgeInsets.all(6.rpx),
                    child: Center(
                      child: Text("待发货"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 37, 168, 19),
                  child: Padding(
                    padding: EdgeInsets.all(6.rpx),
                    child: Center(
                      child: Text("待收货"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 237, 156, 188),
                  child: Padding(
                    padding: EdgeInsets.all(6.rpx),
                    child: Center(
                      child: Text("待评价"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 62, 124, 181),
                  child: Padding(
                    padding: EdgeInsets.all(6.rpx),
                    child: Center(
                      child: Text("退款/售后"),
                    ),
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
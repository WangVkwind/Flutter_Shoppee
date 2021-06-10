import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopee/pages/store/components/custom_tabbarview.dart';
import 'package:flutter_shopee/pages/store/components/main_body.dart';
import 'package:flutter_shopee/pages/store/components/product_catalogue.dart';
import 'package:flutter_shopee/pages/store/components/search_bar.dart';
import 'package:flutter_shopee/pages/store/components/store_header.dart';
import 'package:flutter_shopee/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

const List data = ["assets/svg/1288719954.svg","assets/svg/2005_iraq_justice.svg","assets/svg/1475012028.svg","assets/svg/Basic-Hanbok.svg","assets/svg/Blue_Polo_Shirt_Remix_by_Merlin2525.svg","assets/svg/Jester-Hat-Icon.svg","assets/svg/shirt.svg","assets/svg/us-sock.svg","assets/svg/johnny_automatic_snow_child.svg"];

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 239, 239),
        elevation: 0,
        title: SearchBar(),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 14.rpx,),
                Container(
                  margin: EdgeInsets.only(right: ScreenUtil.screenWidth !* 0.7),
                  child: Text("人气店铺",style: TextStyle(fontSize: 20,color: Colors.black),),
                ),
                SizedBox(height: 10.rpx,),
                Container(
                  margin: EdgeInsets.only(top: 5.rpx),
                  height: 160.rpx,
                  child: StoreHeader(),
                ),
                SizedBox(height: 20.rpx,),
                Container(
                  margin: EdgeInsets.only(right: ScreenUtil.screenWidth !* 0.7),
                  child: Text("流行商品",style: TextStyle(fontSize: 20,color: Colors.black),),
                ),
                SizedBox(height: 10.rpx,),
                Wrap(
                  runSpacing: 10.rpx,
                  spacing: 9.rpx,
                  children: data.map((e) => _buildItem(e)).toList(),
                ),
                SizedBox(height: 20.rpx,),
                CustomTabBarView()
              ],
            ),
          )
      ),
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
    );
  }

  Container _buildItem(String path) => Container(
    width: ScreenUtil.screenWidth !* 0.28,
    padding: EdgeInsets.all(5.rpx),
    margin: EdgeInsets.only(left: 10.rpx),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.rpx)
    ),
    child: Column(
      children: [
        SvgPicture.asset(
            path,
          height: 150.rpx,
        ),
        Text("丁克里斯，298￥")
      ],
    ),
  );
}

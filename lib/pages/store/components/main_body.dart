import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopee/components/container_component.dart';
import 'package:flutter_shopee/pages/store/components/product_catalogue.dart';

import 'package:flutter_shopee/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

const List productCatalogue = ["所有","T恤","风衣","汉服","JK","Lolita","内衣","内饰","鞋袜","其他"];

class StoreMainBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StoreMainBodyState();
  }
}

class _StoreMainBodyState extends State<StoreMainBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidth,
      child: Row(
        children: [
          Container(
               margin: EdgeInsets.only(top: 10.rpx),
              width: ScreenUtil.screenWidth !* 0.21,
              height: 440.rpx,
              child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (BuildContext context,int index){
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.rpx)
                      ),
                      child: Container(
                        height: 40.rpx,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.rpx),
                          color: Color.fromARGB(255, 121, 194, 239),
                        ),
                        child: Center(
                          child: Text(productCatalogue[index]),
                        ),
                      ),
                    );
                  }
              )
          ),
          Container(
            height: 440.rpx,
            width: ScreenUtil.screenWidth !* 0.79,
            child: ListView.builder(
              itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context,int index){
                  return Container(
                    margin: EdgeInsets.all(14.rpx),
                    padding: EdgeInsets.only(left: 30.rpx),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset("assets/svg/1288719954.svg",width: 70.rpx,),
                        SvgPicture.asset("assets/svg/shirt.svg",width: 70.rpx,),
                      ],
                    )
                  );
                }
            ),
          ),
        ],
      ),
    );
  }

}

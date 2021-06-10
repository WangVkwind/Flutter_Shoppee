import 'package:flutter/material.dart';
import 'package:flutter_shopee/utils/utils.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.rpx,
      padding: EdgeInsets.all(5.rpx),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(17.rpx)),
      ),
      child: Row(
        children: [
          Container(
            width: ScreenUtil.screenWidth !* 0.77,
            padding: EdgeInsets.only(left: 10.rpx),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "或许可以从这里开始",
                  labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                  ),
                  border: InputBorder.none
              ),
            ),
          ),
          Icon(Icons.search,color: Colors.black,)
        ],
      ),
    );
  }
  
}

import 'package:flutter/material.dart';
import 'package:flutter_shopee/utils/utils.dart';

class HelpFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("收货地址"),
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
      ),
      body: Container(
        height: ScreenUtil.screenHeight,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context,int index){
              return Container(
                child: Text("opo"),
              );
            }
        ),
      ),
    );
  }
}
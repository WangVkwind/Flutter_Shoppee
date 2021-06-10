import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopee/components/container_component.dart';
import 'package:flutter_shopee/pages/cart/components/float_menu.dart';
import 'package:flutter_shopee/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartState();
  }
}

class _CartState extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ScreenUtil.screenHeight,
        child: ListView.builder(
            itemCount: 16,
            itemBuilder: (BuildContext context,int index){
              return cartContainer(index);
            }
        ),
      ),
      floatingActionButton: FloatMenu(width: MediaQuery.of(context).size.width,)
    );
  }

  Widget cartContainer(int index) {
    return Dismissible(
        background: Container(
          color: Colors.green,
          alignment: Alignment(-0.9,0),
          child: Icon(Icons.check,color: Colors.white,),
        ),
        secondaryBackground: Container(
          color: Colors.red,
          alignment: Alignment(0.9,0),
          child: Icon(Icons.close,color: Colors.red,),
        ),
        onDismissed: (d){
          //do something
        },
        confirmDismiss: (e) async{
          if(e == DismissDirection.endToStart){
            return true;
          }else{
            return false;
          }
        },
        key: ValueKey(index),
        child: Container(
          margin: EdgeInsets.only(top: 15.rpx),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.rpx)
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15.rpx),
                child: SvgPicture.asset("assets/svg/1288719954.svg",fit: BoxFit.cover,width: 40.rpx,height: 60.rpx,),
              ),
              Text("丁克丽丝 298￥"),
              SizedBox(width: 5.rpx,),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 50.rpx,
                      height: 30.9.rpx,
                      child: ElevatedButton(
                        onPressed: (){

                        },
                        child: Text("+",style: TextStyle(fontSize: 20.rpx),),
                      ),
                    ),
                    SizedBox(width: 10.rpx,),
                    Text("1"),
                    SizedBox(width: 10.rpx,),
                    Container(
                      width: 50.rpx,
                      height: 30.9.rpx,
                      child: ElevatedButton(
                        onPressed: (){

                        },
                        child: Text("-",style: TextStyle(fontSize: 20.rpx),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}

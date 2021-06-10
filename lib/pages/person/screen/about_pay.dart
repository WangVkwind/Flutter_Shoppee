import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopee/utils/utils.dart';

class PayWays extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PayWaysState();
  }
}

class _PayWaysState extends State<PayWays> {
  bool? alipayState = true;
  bool? wechatPayState = true;
  bool? rmbState = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: SafeArea(
            child: Container(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      child: Text(
                        "支付方式",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    height: 100.rpx,
                    width: ScreenUtil.screenWidth! * 0.89,
                    margin: EdgeInsets.only(top: 10.rpx),
                    padding: EdgeInsets.all(10.rpx),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/stores/1.jpg"),
                            fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.circular(10.rpx)),
                    child: Text(
                      "支付宝",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 100.rpx,
                    width: ScreenUtil.screenWidth! * 0.89,
                    margin: EdgeInsets.only(top: 10.rpx),
                    padding: EdgeInsets.all(10.rpx),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/stores/2.jpg"),
                            fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.circular(10.rpx)),
                    child: Text(
                      "微信",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 100.rpx,
                    width: ScreenUtil.screenWidth! * 0.89,
                    margin: EdgeInsets.only(top: 10.rpx),
                    padding: EdgeInsets.all(10.rpx),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/stores/3.jpg"),
                            fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.circular(10.rpx)),
                    child: Text(
                      "数字人民币",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 100.rpx,
                    width: ScreenUtil.screenWidth! * 0.89,
                    margin: EdgeInsets.only(top: 10.rpx),
                    padding: EdgeInsets.all(10.rpx),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/stores/4.jpg"),
                            fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.circular(10.rpx)),
                    child: Text(
                      "银行卡",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14.rpx),
                    padding: EdgeInsets.only(left: 10.rpx),
                    width: ScreenUtil.screenWidth! * 0.89,

                    child: Text("tips：请勿将支付密码、验证码等私人信息告诉他人！",style: TextStyle(
                      color: Colors.red,
                      fontSize: 13.rpx
                    ),),
                  ),
                  SizedBox(height: 10.rpx,),
                  Container(
                    width: ScreenUtil.screenWidth! * 0.89,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //没那么多花里胡哨的，这是想整广告。
                        Container(
                          height: ScreenUtil.screenWidth! * 0.2,
                          width: ScreenUtil.screenWidth! * 0.55,
                          padding: EdgeInsets.all(20.rpx),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/personal/caver.webp"),
                              fit: BoxFit.fitWidth
                            ),
                            borderRadius: BorderRadius.circular(10.rpx)
                          ),
                          child: Text("试试将我添加到上面去吧",),
                        ),
                        SizedBox(width: ScreenUtil.screenWidth! * 0.03,),
                        Container(
                          height: ScreenUtil.screenWidth! * 0.2,
                          width: ScreenUtil.screenWidth! * 0.24,
                          padding: EdgeInsets.all(20.rpx),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.rpx)
                          ),
                          child: TextButton(
                            onPressed: () {
                              _bottomMenu();
                            },
                            child: Text("编辑"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async {
          Navigator.pop(context);
          //Navigator.pop(context);
          return false;
        });
  }

  _bottomMenu() {
    showModalBottomSheet(
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.rpx),topRight: Radius.circular(15.rpx))
        ),
        context: context,
        builder: (BuildContext context){
          return StatefulBuilder(
              builder: (context1, state){
                return Container(
                  child: Column(
                    children: [
                      SizedBox(height: 5.rpx,),
                      ListTile(
                        leading: Image.asset("assets/personal/alipay.png"),
                        title: Text("支付宝"),
                        trailing: Checkbox(
                          value: alipayState,
                          onChanged: (bool? value) {
                            state((){
                              alipayState = value;
                            });
                          },),
                      ),
                      Divider(),
                      SizedBox(height: 5.rpx,),
                      ListTile(
                        leading: Image.asset("assets/personal/wechat.png"),
                        title: Text("支付宝"),
                        trailing: Checkbox(
                          value: wechatPayState,
                          onChanged: (bool? value) {
                            state((){
                              wechatPayState = value;
                            });
                          },),
                      ),
                      Divider(),
                      SizedBox(height: 5.rpx,),
                      ListTile(
                        leading: Image.asset("assets/personal/cac.png"),
                        title: Text("支付宝"),
                        trailing: Checkbox(
                          value: rmbState,
                          onChanged: (bool? value) {
                            state((){
                              rmbState = value;
                            });
                          },),
                      ),
                    ],
                  ),
                );
              }
          );
        }
    );
  }
}

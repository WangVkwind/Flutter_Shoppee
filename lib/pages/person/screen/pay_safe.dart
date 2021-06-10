import 'package:flutter/material.dart';

class PaySafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Text("通过以下方式保护支付安全",style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
                ExpansionTile(
                  leading: Icon(Icons.lock),
                  title: Text("修改密码"),
                  backgroundColor: Colors.grey.withAlpha(6),
                  onExpansionChanged: (value){
                    print(value);
                  },
                  initiallyExpanded: false,
                  children: [
                    Container(
                      child: ChangePsdForm()
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.verified),
                  title: Text("支付前验证"),
                  backgroundColor: Colors.grey.withAlpha(6),
                  onExpansionChanged: (value){
                    print(value);
                  },
                  initiallyExpanded: false,
                  children: [
                    Text("1"),
                    Text("2"),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.usb_off),
                  title: Text("关闭USB调试"),
                  backgroundColor: Colors.grey.withAlpha(6),
                  onExpansionChanged: (value){
                    print(value);
                  },
                  initiallyExpanded: false,
                  children: [
                    Text("1"),
                    Text("2"),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.track_changes),
                  title: Text("卸载不安全软件"),
                  backgroundColor: Colors.grey.withAlpha(6),
                  onExpansionChanged: (value){
                    print(value);
                  },
                  initiallyExpanded: false,
                  children: [
                    Text("1"),
                    Text("2"),
                  ],
                ),
                Divider(thickness: 1,indent: 30,endIndent: 30,),
                Container(
                  child: Text("学习安全提示",style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
                ExpansionTile(
                  leading: Icon(Icons.warning),
                  title: Text("安全提示"),
                  backgroundColor: Colors.grey.withAlpha(6),
                  onExpansionChanged: (value){
                    print(value);
                  },
                  initiallyExpanded: false,
                  children: [
                    Text("1"),
                    Text("2"),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }

}

class ChangePsdForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "旧密码"
        ),
      ),
    );
  }
  
}
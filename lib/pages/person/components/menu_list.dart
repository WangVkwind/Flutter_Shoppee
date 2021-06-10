import 'package:flutter/material.dart';
import 'package:flutter_shopee/routes/routes.dart';
import 'package:flutter_shopee/utils/utils.dart';
import 'package:get/get.dart';

const List Menu = [
  {'支付方式', ''},
  {'收藏', 'd'},
  {'设置', ''}
];

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.rpx),
                    topRight: Radius.circular(20.rpx),
                  )),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.payment),
                    title: Text("支付方式"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.toNamed(Routes.PayWays);
                    },
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.safety_divider),
                    title: Text("支付安全"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.toNamed(Routes.PaySafe);
                    },
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.password),
                    title: Text("支付密码"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.toNamed(Routes.PaySafe);
                    },
                  ),
                  Divider(
                    height: 1,
                  ),
                ],
              )),
          SizedBox(
            height: 20.rpx,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.rpx),
                    topRight: Radius.circular(20.rpx),
                  )),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.post_add),
                    title: Text("地址管理"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.toNamed(Routes.addressManager);
                    },
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.collections),
                    title: Text("收藏"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.toNamed(Routes.collection);
                    },
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("设置"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.toNamed(Routes.setting);
                    },
                  ),
                  Divider(
                    height: 1,
                  ),
                ],
              )),
          SizedBox(
            height: 20.rpx,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.rpx),
                    topRight: Radius.circular(20.rpx),
                  )),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text("帮助&反馈"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.toNamed(Routes.help_feedback);
                    },
                  ),
                  Divider(
                    height: 2,
                  ),
                  ListTile(
                    leading: Icon(Icons.note),
                    title: Text("关于FluShopee"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.toNamed(Routes.aboutShopee);
                    },
                  ),
                  Divider(
                    height: 2,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

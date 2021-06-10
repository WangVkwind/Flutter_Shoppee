import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopee/utils/utils.dart';
import 'package:flutter_svg/svg.dart';

import 'components/menu_list.dart';
import 'components/user_details.dart';
import 'components/user_order.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.screenHeight,
      child: CustomScrollView(
        slivers: [
          _buildSliverAppBar(),
          _buildSliverList(),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 100.rpx,
      leading: Container(
        margin: EdgeInsets.only(left: 20.rpx),
        child: CircleAvatar(
          child: SvgPicture.asset("assets/svg/1288719954.svg"),
        ),
      ),
      title: Container(
        child: Column(
          children: [
            Text("Keep-alive"),
            Text("aop19203"),
          ],
        ),
      ),
      elevation: 5,
      pinned: true,
      backgroundColor: Color.fromARGB(255, 62, 124, 181),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 65, bottom: 10),
        collapseMode: CollapseMode.parallax,
        background: Image.asset(
          "assets/personal/caver.webp",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildSliverList() => SliverList(
          delegate: SliverChildBuilderDelegate((
        _,
        int index,
      ) =>
              SingleChildScrollView(
                child: Container(
                    width: ScreenUtil.screenWidth,
                    height: ScreenUtil.screenHeight,
                    child: Column(
                      children: [
                        SizedBox(height: 10.rpx,),
                        UserOrder(),
                        SizedBox(
                          height: 21.rpx,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CardDetails(
                              title: '快递',
                              backgroundImg: 'assets/stores/1.jpg',
                              width: ScreenUtil.screenWidth! * 0.4,
                            ),
                            CardDetails(
                              title: '账单',
                              backgroundImg: 'assets/stores/4.jpg',
                              width: ScreenUtil.screenWidth! * 0.4,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.rpx,
                        ),
                        MenuList()
                      ],
                    )),
              ),
            childCount: 1
          ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_shopee/utils/utils.dart';
import 'package:flutter_svg/svg.dart';

class CustomTabBarView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomTabBarViewState();
  }
}

class _CustomTabBarViewState extends State<CustomTabBarView> with SingleTickerProviderStateMixin{
  final tabs = ["销量榜","收藏榜","新品榜"];
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidth,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.83,
            height: 40.rpx,
            padding: EdgeInsets.only(top: 5.rpx,left: 20.rpx,right: 20.rpx,bottom: 5.rpx),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.rpx)
            ),
            child: _buildTabBar(),
          ),
          SizedBox(height: 10.rpx,),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.rpx)
            ),
            child: _buildTabBarView(),
          ),
          SizedBox(height: 10.rpx,),
        ],
      ),
    );
  }

  Widget _buildTabBar() => TabBar(
      labelColor: Colors.blue,//选中的颜色
      labelStyle: TextStyle(color: Colors.blue, fontSize: 14),
      unselectedLabelColor: Colors.black54,//未选中的颜色
      unselectedLabelStyle: TextStyle(color: Colors.black54, fontSize: 14),
      isScrollable: true,
      //自定义indicator样式
      indicator: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      controller: _tabController,
      tabs: tabs.map((e) => Tab(text: e,)).toList(),
  );

  Widget _buildTabBarView() => TabBarView(
      controller: _tabController,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/2005_iraq_justice.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/Chemise.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/TOMMIXHATBWLINE.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/2005_iraq_justice.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/Chemise.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/TOMMIXHATBWLINE.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/2005_iraq_justice.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/Chemise.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/TOMMIXHATBWLINE.svg",
                      width: 80,
                      height: 90,
                    ),
                    Column(
                      children: [
                        Text("描述"),
                        Text("描述")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]
  );

}
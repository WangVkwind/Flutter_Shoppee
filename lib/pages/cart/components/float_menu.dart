import 'package:flutter/material.dart';

import 'package:flutter_shopee/utils/utils.dart';

class FloatMenu extends StatefulWidget {
  final double? width;

  FloatMenu({required this.width});

  @override
  State<StatefulWidget> createState() {
    return _FloatMenuState();
  }
}

class _FloatMenuState extends State<FloatMenu> with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose(){
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: ScreenUtil.screenWidth,
          height: 50.rpx,
          color: Colors.transparent,
        ),
        Positioned(
            child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    if (_animationController?.status == AnimationStatus.completed) {
                      _animationController?.reverse();
                    } else if (_animationController?.status == AnimationStatus.dismissed) {
                      _animationController?.forward();
                    }
                    //_animationController!.forward();
                  });
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: (_animationController)!,
                )
            )
        ),
        Positioned(
          top: 0,
            right: 70.rpx,
            child: SizeTransition(
              axis: Axis.horizontal,
              sizeFactor: CurvedAnimation(
                parent: (_animationController)!,
                curve: Curves.linear,
              ),
              child: Container(
                width: ScreenUtil.screenWidth !* 0.76,
                height: 50.rpx,
                decoration: BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.rpx)
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.red,
                      child: Text("Delete All"),
                    ),
                    Card(
                      color: Colors.red,
                      child: Text("Delete All"),
                    ),
                    Card(
                      color: Colors.red,
                      child: Text("Pay for"),
                    ),
                    Card(
                      color: Colors.red,
                      child: Text("Delete All"),
                    ),
                  ],
                ),
              ),
            )
        )
      ],
    );
  }
}
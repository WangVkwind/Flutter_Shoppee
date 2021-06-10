import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/widgets/flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_shopee/utils/utils.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

const List storesImg = ["assets/stores/1.jpg","assets/stores/2.jpg","assets/stores/3.jpg","assets/stores/4.jpg"];

class StoreHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: storesImg.length,
      pagination: SwiperPagination(),
      controller: SwiperController(),
      viewportFraction: 0.8,
      scale: 0.9,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            height: 61.8.rpx,
            width: 100.rpx,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  storesImg[index],
                ),
            ),
            borderRadius: BorderRadius.circular(21.rpx)
          ),
            );
      },

    );
  }
}

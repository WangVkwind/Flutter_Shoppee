import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopee/utils/utils.dart';

class ProductCatalogue extends StatelessWidget {
  final String? title;

  ProductCatalogue(this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.rpx)
      ),
        child: Container(
          height: 40.rpx,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.rpx),
            color: Color.fromARGB(255, 121, 194, 239),
          ),
          child: Center(
            child: Text(title!),
          ),
        ),
      );
  }

}
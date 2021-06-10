import 'package:flutter/material.dart';

class ButtonCpt extends StatelessWidget {
  late final String title;
  late final Function btnTap;
  ButtonCpt({required this.title,required this.btnTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {  },
        child: Text(title,style: TextStyle(
          fontSize: 20,
        ),),
      ),
    );
  }
}
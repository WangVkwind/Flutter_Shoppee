import 'package:flutter/material.dart';
import 'package:flutter_shopee/routes/routes.dart';
import 'package:flutter_shopee/utils/utils.dart';

import 'package:flutter_shopee/pages/store/store.dart';
import 'package:flutter_shopee/pages/cart/cart.dart';
import 'package:flutter_shopee/pages/person/person.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      initialRoute: "/",
      getPages: AppRoutes.pages,
    );
  }
}

class MainScreen extends StatefulWidget {
  static String routeName = "/MainScreen";
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final pages = [
    Store(),
    Cart(),
    Person(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.initialize(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: Color.fromARGB(255, 62, 124, 181),
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store),label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "购物车"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "个人"),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 220, 220, 220),
      body: pages[currentIndex],
    );
  }

}


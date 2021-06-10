import 'package:flutter/widgets.dart';

import 'package:flutter_shopee/main.dart';
import 'package:flutter_shopee/pages/person/screen/about_pay.dart';
import 'package:flutter_shopee/pages/person/screen/about_shopee.dart';
import 'package:flutter_shopee/pages/person/screen/address_manager.dart';
import 'package:flutter_shopee/pages/person/screen/collection.dart';
import 'package:flutter_shopee/pages/person/screen/help_feedback.dart';
import 'package:flutter_shopee/pages/person/screen/pay_safe.dart';
import 'package:flutter_shopee/pages/person/screen/setting.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final Map<String, WidgetBuilder> routes = {
  MainScreen.routeName: (context) => MainScreen(),
};

abstract class Routes {
  static const Initial = '/';
  static const PayWays = '/PayWays';
  static const PaySafe = '/PaySafe';
  static const addressManager = '/AddressManager';
  static const collection = '/Collection';
  static const setting = '/Setting';
  static const help_feedback = 'HelpFeedback';
  static const aboutShopee = 'AboutShopee';
}

abstract class AppRoutes {
  static final pages = [
    GetPage(
      name: Routes.Initial,
      page: () => MainScreen(),
    ),
    GetPage(
        name: Routes.PayWays,
        page: () => PayWays(),
    ),
    GetPage(
      name: Routes.PaySafe,
      page: () => PaySafe(),
    ),
    GetPage(
      name: Routes.addressManager,
      page: () => AddressManager(),
    ),
    GetPage(
      name: Routes.collection,
      page: () => Collection(),
    ),
    GetPage(
      name: Routes.setting,
      page: () => Setting(),
    ),
    GetPage(
      name: Routes.help_feedback,
      page: () => HelpFeedback(),
    ),
    GetPage(
      name: Routes.aboutShopee,
      page: () => AboutShopee(),
    ),

  ];
}
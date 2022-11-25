import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core.dart';

class MainController extends GetxController {
  static MainController to = Get.find();

  final pageCotroller = PageController();
  final animationDuration = const Duration(milliseconds: 350);
  late List<BottomBarItem> navigationItems;

  @override
  void onInit() {
    navigationItems = NavigationService().getNavigationItemList();
    super.onInit();
  }

  @override
  void onClose() {
    pageCotroller.dispose();
    Get.delete();
    debugPrint("[ MainController ] => onClose()");
    super.onClose();
  }
}

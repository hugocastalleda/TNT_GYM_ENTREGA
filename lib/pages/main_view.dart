import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageCotroller,
        physics: const NeverScrollableScrollPhysics(),
        //children: const [TrainView(), TrainView(), ProfileView()],
      ),
      bottomNavigationBar: ValueBuilder<int?>(
        initialValue: 0,
        builder: (value, updateFn) => Container(
          color: Colors.grey[200],
          child: MenuBottomNavBarWidget(
            currentIndex: value!,
            items: controller.navigationItems,
            onTap: (tab) {
              controller.pageCotroller.animateToPage(
                tab,
                duration: controller.animationDuration,
                curve: Curves.ease,
              );
              updateFn(tab);
            },
          ),
        ),
      ),
    );
  }
}

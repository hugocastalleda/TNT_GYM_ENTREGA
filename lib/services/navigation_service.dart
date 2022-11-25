import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../core.dart';

class NavigationService {
  List<BottomBarItem> getNavigationItemList() {
    return <BottomBarItem>[
      BottomBarItem(
          backgroundColor: kFirstColor,
          icon: const Icon(
            LineIcons.home,
            color: Colors.black54,
          ),
          activeIcon: const Icon(LineIcons.home),
          title: "Workout"),
      BottomBarItem(isCustomWidget: true),
      BottomBarItem(
          backgroundColor: kFirstColor,
          icon: const Icon(
            LineIcons.userAlt,
            color: Colors.black54,
          ),
          activeIcon: const Icon(LineIcons.user),
          title: "Profile")
    ];
  }
}

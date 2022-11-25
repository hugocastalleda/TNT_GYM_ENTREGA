import 'package:fitness/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    this.onSelected,
    required this.items,
    Key? key,
  }) : super(key: key);

  final Function(int)? onSelected;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return ValueBuilder<int?>(
      initialValue: 0,
      builder: (value, updateFn) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: items
                .map((item) => buildItem(
                    onTap: () {
                      updateFn(items.indexOf(item));
                      if (onSelected != null) onSelected!(items.indexOf(item));
                    },
                    text: item,
                    isActive: items.indexOf(item) == value))
                .toList()),
      ),
    );
  }

  Widget buildItem({
    required String text,
    bool isActive = false,
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: !isActive ? null : Border.all(color: kFirstColor),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}

import 'package:custom_tab_bar/custom_tab_button.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    Key? key,
    this.tabController,
    this.backgroundColor = Colors.transparent,
    this.height = 44,
  }) : super(key: key);

  final TabController? tabController;
  final Color? backgroundColor;
  final double height;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  late final List<CustomTabButton> _list = <CustomTabButton>[];
  void onTab(String title, int index) {
    print("Tab $title");
    widget.tabController?.index = index;
  }

  @override
  void initState() {
    for (int index = 0; index < widget.tabController!.length; index++) {
      _list.add(CustomTabButton(
        title: "$index",
        onTabClick: () {
          onTab("$index", index);
        },
      ));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      height: widget.height,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _list,
      ),
    );
  }
}

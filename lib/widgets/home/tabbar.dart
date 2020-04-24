import 'package:flutter/material.dart';
import 'package:flutter_cart/constants/index.dart';

class KTabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  get preferredSize {
    return Size.fromHeight(40);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: TabBar(
          indicatorColor: KColorConstant.themeColor,
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          labelColor: KColorConstant.themeColor,
          tabs: KString.tabs
              .map((i) => Container(
                    height: 40.0,
                    child: new Tab(text: i),
                  ))
              .toList()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_cart/widgets/index.dart';
import './firsttab.dart';


class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          children: <Widget>[
            KTabBarWidget(),
            HomeTopBar(),
            Expanded(
                child: TabBarView(
              children: <Widget>[
                FisrtTabWidget(),
                FisrtTabWidget(),
                FisrtTabWidget(),
                // FisrtTabWidget(),
                // FisrtTabWidget(),
                // FisrtTabWidget(),
                // FisrtTabWidget(),
                // FisrtTabWidget(),
                // FisrtTabWidget(),
              ],
            ))
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:movie_app_ui_design/circular_tab_indicator.dart';
import 'package:movie_app_ui_design/colors.dart';

class MovieTabBarView extends StatelessWidget {
  const MovieTabBarView({@required this.tabs, Key key}) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: CircularTabIndicator(color: pinkColor, raduis: 3),
      labelColor: tabSelectedColor,
      unselectedLabelStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      labelStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      indicatorColor: pinkColor,
      indicatorWeight: 6,
      isScrollable: true,
      labelPadding: const EdgeInsets.symmetric(horizontal: 32),
      indicatorSize: TabBarIndicatorSize.label,
      tabs: tabs
          .map((e) => Tab(
                text: e,
              ))
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_app_ui_design/colors.dart';
import 'package:movie_app_ui_design/filtering_chips.dart';
import 'package:movie_app_ui_design/movie_app_bar.dart';
import 'package:movie_app_ui_design/tab_bar_view.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: MovieAppBar(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 16,
            ),
            MovieTabBarView(
              tabs: ["In Theater", "Box Office", "Coming Soon"],
            ),
            SizedBox(
              height: 32,
            ),
            MovieFilteringChips(
              options: ["Action", "Crime", "Comedy", "Drama"],
            ),
          ],
        ),
      ),
      initialIndex: 0,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_app_ui_design/colors.dart';
import 'package:movie_app_ui_design/movie_app_bar.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: MovieAppBar(),
    );
  }
}

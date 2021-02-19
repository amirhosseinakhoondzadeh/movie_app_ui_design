import 'package:flutter/material.dart';
import 'package:movie_app_ui_design/colors.dart';
import 'package:movie_app_ui_design/filtering_chips.dart';
import 'package:movie_app_ui_design/movie_app_bar.dart';
import 'package:movie_app_ui_design/movie_model.dart';
import 'package:movie_app_ui_design/movie_view_pager.dart';
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
            Expanded(
              child: MovieViewPager(
                movies: [
                  MovieModel(
                    imageUrl:
                        "https://m.media-amazon.com/images/M/MV5BM2UwMDVmMDItM2I2Yi00NGZmLTk4ZTUtY2JjNTQ3OGQ5ZjM2XkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_UX182_CR0,0,182,268_AL_.jpg",
                    name: "Ford v Ferrari",
                    rate: 8.1,
                  ),
                  MovieModel(
                    imageUrl:
                        "https://m.media-amazon.com/images/M/MV5BM2UwMDVmMDItM2I2Yi00NGZmLTk4ZTUtY2JjNTQ3OGQ5ZjM2XkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_UX182_CR0,0,182,268_AL_.jpg",
                    name: "Ford v Ferrari",
                    rate: 8.1,
                  ),
                  MovieModel(
                    imageUrl:
                        "https://m.media-amazon.com/images/M/MV5BM2UwMDVmMDItM2I2Yi00NGZmLTk4ZTUtY2JjNTQ3OGQ5ZjM2XkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_UX182_CR0,0,182,268_AL_.jpg",
                    name: "Ford v Ferrari",
                    rate: 8.1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      initialIndex: 0,
    );
  }
}

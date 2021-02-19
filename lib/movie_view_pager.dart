import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movie_app_ui_design/colors.dart';
import 'package:movie_app_ui_design/movie_model.dart';

class MovieViewPager extends StatefulWidget {
  MovieViewPager({@required this.movies, Key key}) : super(key: key);

  final List<MovieModel> movies;

  @override
  _MovieViewPagerState createState() => _MovieViewPagerState();
}

class _MovieViewPagerState extends State<MovieViewPager> {
  PageController _pageController;

  double _viewportFraction = 0.81;

  double _pageOffset = 0;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: 0, viewportFraction: _viewportFraction)
          ..addListener(() {
            setState(() {
              _pageOffset = _pageController.page;
              // print("page is : ${_pageController.page}");
            });
          });
  }

  double calculateOpacity(int index) {
    print("_pageOffset : $_pageOffset");
    final double decimalNumber =
        double.parse((_pageOffset - _pageOffset.toInt()).toStringAsFixed(1));
    print("decimalNumber : $decimalNumber");

    if (decimalNumber == 0.0) {
      // check whether its current item or not
      if (index == _pageOffset.toInt()) {
        return 1.0;
      }
      return 0.4;
    } else if (decimalNumber <= 0.4) {
      return 0.4;
    } else {
      return decimalNumber;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      physics: BouncingScrollPhysics(),
      itemCount: widget.movies.length,
      itemBuilder: (context, index) {
        final double difference = index - _pageOffset;

        return Container(
          margin: const EdgeInsets.only(
            top: 40,
            bottom: 40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: Transform.rotate(
                    angle: ((difference * 40.0) / 360),
                    origin: Offset(difference * -150, 0),
                    child: Opacity(
                      opacity: calculateOpacity(index),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          widget.movies[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                widget.movies[index].name,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star_rate,
                    color: yellowColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '${widget.movies[index].rate}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: SecondaryTitle,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

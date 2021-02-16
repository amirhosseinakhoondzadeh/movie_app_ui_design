import 'package:flutter/material.dart';
import 'package:movie_app_ui_design/colors.dart';

class MovieFilteringChips extends StatelessWidget {
  const MovieFilteringChips({@required this.options, Key key})
      : super(key: key);

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      height: 50,
      child: ListView.separated(
        itemCount: options.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemBuilder: (BuildContext context, int index) {
          return FilterChip(
            onSelected: (selected) {},
            label: Text(
              options[index],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            backgroundColor: whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(width: 1.5, color: Colors.grey[200]),
            ),
          );
        },
      ),
    );
  }
}

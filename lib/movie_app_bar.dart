import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_ui_design/svgs_path.dart';

class MovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MovieAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.string(
                menu_svg,
                height: 24,
                width: 24,
              ),
            ),
            Spacer(),
            Center(
              child: SvgPicture.string(
                search_svg,
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

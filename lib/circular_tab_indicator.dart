import 'package:flutter/material.dart';

class CircularTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircularTabIndicator({@required Color color, @required double raduis})
      : _painter = _CircularPainter(color: color, raduis: raduis);

  @override
  BoxPainter createBoxPainter([void Function() onChanged]) => _painter;
}

class _CircularPainter extends BoxPainter {
  final Paint _paint;
  final double _radius;

  _CircularPainter({@required Color color, @required double raduis})
      : _radius = raduis,
        _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Offset circleOffset =
        offset + Offset(18, configuration.size.height - 3);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromCenter(center: circleOffset, width: 40, height: 6),
          topRight: Radius.circular(_radius),
          topLeft: Radius.circular(_radius),
          bottomRight: Radius.circular(_radius),
          bottomLeft: Radius.circular(_radius),
        ),
        _paint);
  }
}

import 'dart:math';

import 'Shape.dart';
import 'Point.dart';

class Circle extends Shape{

  Circle({ required Point p1, required Point p2}) : super(p1: p1, p2: p2);

  double getRaduis(){
    double raduis = p1.distanceTo(p2);

    return raduis;
  }
  @override
  double getArea() {
    double r = getRaduis();
    return pi*r*r;
  }

  @override
  double getPerimeter() {
    return 2*pi*getRaduis();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'Circle',
      'center': p1.toJson(),
      'radius': getRaduis().toStringAsFixed(3)
    };
  }

}
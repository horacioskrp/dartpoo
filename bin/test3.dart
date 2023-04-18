
import 'dart:ffi';

import 'models/Point.dart';
import 'models/Rectangle.dart';

void main(){
  Rectangle rec = Rectangle(p1: Point( x: 10, y: 30), p2: Point(x: 30, y: 60));

  print(rec.getWidth());
  print(rec.getHeigth());

  print("_____________________________");
  print(rec.getArea());
  print(rec.getPerimeter());

}
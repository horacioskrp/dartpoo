import 'Point.dart';
import 'Shape.dart';

class Rectangle extends Shape{
  Rectangle( { required Point p1, required Point p2}) : super(p1: p1, p2: p2);

  double getWidth(){
    return (p2.x - p1.x).abs();
  }
  double getHeigth(){
    return (p2.y - p1.y).abs();
  }

  @override
  double getArea() {
    return getWidth()*getHeigth();
  }

  @override
  double getPerimeter() {
    return 2*(getHeigth() + getWidth());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type':'Rectangle',
      'x':p1.x, 'y': p1.y,'width': getWidth(), 'height': getHeigth()
    };
  }

}
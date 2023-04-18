import 'models/Circle.dart';
import 'models/Point.dart';

void main() {
  Circle c = Circle(
      p1: Point(
        x: 10,
        y: 30,
      ),
      p2: Point(
        x: 30,
        y: 50,
      ));


  print(c.getPerimeter().toStringAsFixed(3));
  print(c.getArea().toStringAsFixed(3));
  print(c.toJson());
  print("\n");
  print(c.getRaduis().toStringAsFixed(3));
  print((c as Circle).getRaduis());
}

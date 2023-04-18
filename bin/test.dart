import 'models/Point.dart';

void main(){
  Point p1 = const Point(x: 20, y: 30);
  Point p2 = const Point(x: 10, y: 30);

  print(identical(p1, p2));

}
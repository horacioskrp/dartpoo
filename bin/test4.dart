import 'models/Circle.dart';
import 'models/Point.dart';
import 'models/Rectangle.dart';
import 'models/geometricdesign.dart';

void main(){
  GeometricDesign geometricDesign = GeometricDesign();
  geometricDesign.add(Circle(p1: Point(x: 10,y: 30), p2: Point(x:20,y: 15)));
  geometricDesign.add(Circle(p1: Point(x: 40,y: 50), p2: Point(x:80,y: 10)));
  geometricDesign.add(Rectangle(p1: Point(x: 40,y: 50), p2: Point(x:80,y: 10)));
  geometricDesign.show();
  print(geometricDesign.toJson());

  geometricDesign.save("design1.json");

}
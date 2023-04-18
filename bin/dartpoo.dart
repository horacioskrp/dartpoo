
import 'dart:convert';

import 'models/Point.dart';

void main(List<String> arguments) {
  Point a = Point(x: 20, y:10);
  Point b = Point.fromArray([40,60]);
  print(b.toString());
  print(a.distanceTo(b).toStringAsFixed(3));

  print(b.toJson());


  print(json.encode(a.toJson()));

  print("\n  ");

  JsonEncoder jsonEncoder = JsonEncoder.withIndent(" ");

  print(jsonEncoder.convert(b.toJson()));
  Point c = Point.fromJson({ 'x' : 34, 'y' : 50});
  print(c.toString());
}

import 'dart:convert';
import 'dart:io';

import 'Circle.dart';
import 'Point.dart';
import 'Rectangle.dart';
import 'Shape.dart';

class GeometricDesign{

  List<Shape> shapes = [];

  Shape add(Shape shape){
    shapes.add(shape);
    return shape;
  }

  void show(){
    for(Shape shape in shapes){
      if(shape is Circle){
        print("************* Circle ***************");
        print("Raduis : ${shape.getRaduis()}");
      } else if (shape is Rectangle){
        print("************* Rectangle **************");
        print(" Heigth : ${shape.getArea()}");
        print("Perimeter : ${shape.getPerimeter()}");
      }

      print(shape.toJson());
      print("Area : ${shape.getArea()}");
      print("Perimeter : ${shape.getPerimeter()}");
    }
  }

void  save(String filename){
  File file = File(filename);
  file.writeAsStringSync(toJson());
  }

  String toJson(){
    JsonEncoder jsonEncoder = JsonEncoder.withIndent(" ");
    return jsonEncoder.convert({ 'shapes': shapes});

  }

  GeometricDesign (){}

  void getRaduis(String fileName){
    File file = File(fileName);
    String data = file.readAsStringSync();

    Map<String, dynamic> jsonData = json.decode(data);
    List bindshape = jsonData['shapes'] as List;
    bindshape.forEach((shape) => {

      print(shape)
      //if(shape['type'] == 'Circle') print(shape['raduis'])

    });

    //print(jsonData);

  }

  GeometricDesign.fromFile(String fileName){
    File file = File(fileName);
    String data = file.readAsStringSync();

    Map<String, dynamic> jsonData = json.decode(data);

    List<Shape> shapesList = (jsonData['shapes'] as List).map((item) {
      if(item['type'] == 'Circle'){
        print(item['radius']);
        double radius = double.parse(item['radius']);
        Point center = Point.fromJson(item['center']);
        return Circle( p1: center, p2: Point(x: center.x + radius, y: center.y) );
      } else {
        double w = item['width'];
        double h = item['height'];

        Point p1 = Point(x: item['x'], y: item['y']);
        Point p2 = Point(x: p1.x + w, y: p1.y + h);

        return Rectangle(p1: p1, p2: p2);
      }
    }).toList();

  }
}
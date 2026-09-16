import 'dart:convert';
import 'package:untitled/data/model/product.dart';
import 'Person.dart';

class Student extends Person {
  double math;
  double phic;
  double chem;
  Student CopyStudent({String?id,String?name,double?math,double?phic,double?chem})
  {
    return new Student(id: id??this.id,name: name??this.name,math: math??this.math,phic: phic??this.phic,chem: chem??this.chem);
  }

  Student({
    required super.id,
    required super.name,
    this.math = 0,
    this.phic = 0,
    this.chem = 0,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': this.id ?? "" ,
      'name': this.name ?? "",
      'math': this.math ?? 0,
      'phic': this.phic ?? 0,
      'chem': this.chem ?? 0,
    };
  }
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'] as String,
      name: json['name'] as String,
      math: (json['math'] as num).toDouble(),
      phic: (json['phic'] as num).toDouble(),
      chem: (json['chem'] as num).toDouble(),
    );
  }
}
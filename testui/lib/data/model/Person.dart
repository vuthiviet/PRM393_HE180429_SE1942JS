import 'Student.dart';
import 'Teacher.dart';

enum PersonType {
  Student, Teacher;
}

class Person {
  final String id;
  final String name;

  Person({required this.id, required this.name});

  factory Person.Create(PersonType personType, Map<String, dynamic> value) {
    if (personType == PersonType.Teacher) {
      return new Teacher(
        id: value['id'] as String,
        name: value['name'] as String,
        subject: List<String>.from(value['subject'] as List),
      );
    } else {
      return new Student(
        id: value['id'] as String,
        name: value['name'] as String,
        math: (value['math'] as num).toDouble(),
        phic: (value['phic'] as num).toDouble(),
        chem: (value['chem'] as num).toDouble(),
      );
    }
  }
}
import 'Person.dart';

class Teacher extends Person {
List<String> subject;
Teacher({required super.id,required super.name,required this.subject});
}
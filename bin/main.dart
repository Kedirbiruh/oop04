import 'dart:io';
import 'package:oop04/models.dart';

void main() {
  var t1 = Participant(
    firstName: 'Abel',
    lastName: 'Müller',
    age: 30,
    birthDate: DateTime(2000, 6, 9),
    finalGrade: 1.3,
    status: 'student',
  );

  var t2 = Participant(firstName: 'Sahra', lastName: 'Sadiq',  age: 25,);

  var t3 = Participant(
    firstName: 'Kai',
    lastName: 'Raucher',
    finalGrade: 2.3,
    age: 28, 
    // finalGrade: 10.0,
  );

  t1.printInfo();
  t2.printInfo();
  print(t3);
}

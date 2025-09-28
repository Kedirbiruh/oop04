
import 'package:oop04/models.dart';

void main() {
  final academy = Academy("Code Academy");

  final dartCourse = Course("Dart Programming");
  dartCourse.addParticipant(Participant("Kedir", "Biruh", Gender.male));
  dartCourse.addParticipant(Participant("Anna", "Müller", Gender.female));

  final flutterCourse = Course("Flutter Basics");
  flutterCourse.addParticipant(Participant("Thomas", "Herbert", Gender.diverse));

  academy.addCourse(dartCourse);
  academy.addCourse(flutterCourse);

  print(academy);
}



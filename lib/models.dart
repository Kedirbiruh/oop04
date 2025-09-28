import 'dart:math';
import 'dart:collection';

enum Gender{male, female, diverse}
class AccessPermit {
  final String id;
  final DateTime createdAt;

  AccessPermit._(this.id) : createdAt = DateTime.now();


  AccessPermit(): id = Random().nextInt(1000000000).toString(),
                  createdAt = DateTime.now();

    @override
  String toString() => id;

}

class Participant {
  final String firstName;
  final String lastName;
  final Gender gender;
  final AccessPermit accessPermit;

  Participant(this.firstName, this.lastName, this.gender)
  : accessPermit = AccessPermit();

    @override
  String toString() {
    return 'Participant: $firstName $lastName, gender: $gender, $accessPermit';
  }
}

class Course {
  final String name;
  final List<Participant> participants = [];

  Course(this.name);

  void addParticipant(Participant p) => participants.add(p);

  
  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('Course: $name');
    for (var p in participants) {
      buffer.writeln('  - $p');
    }
    return buffer.toString();
  }
}

class Academy {
  final String name;
  final List<Course> courses = [];

  Academy(this.name);

  void addCourse(Course c) => courses.add(c);

  
  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('Academy: $name');
    for (var c in courses) {
      buffer.writeln(c);
    }
    return buffer.toString();
  }
}



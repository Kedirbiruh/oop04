class Participant {
  String firstName;
  String lastName;
  int age;
  DateTime? birthDate;
  double? finalGrade;
  double? weight;
  double? height;
  String? status;

  Participant({
    required this.firstName,
    required this.lastName,
    required this.age,
    this.birthDate,
    this.finalGrade,
    this.weight,
    this.height,
    this.status = 'Aktiv',
  });

  // Getter: zusammengesetzter Wert
  String get fullName => '$firstName $lastName';

  // Beispiel-Setter mit Validierung (optional)
  set grade(double? value) {
    if (value != null && (value < 0 || value > 6)) {
      throw ArgumentError('Note muss zwischen 0 und 6 liegen');
    }
    finalGrade = value;
  }

  void printInfo() {
    print('Name: $fullName');
    print('Status: $status');
    print('Alter: $age ? "nicht angegeben"');
    print('Geburtstag: ${birthDate?.toIso8601String() ?? "nicht angegeben"}');
    print(
      'Abschlussnote: ${finalGrade?.toStringAsFixed(2) ?? "nicht vorhanden"}',
    );
    print("Hi, ich heiße $firstName, bin $age Jahre alt.");
  }

  @override
  String toString() {
    return 'Teilnehmer(fullName: $fullName, role: $status, age: ${age ?? "?"})';
  }
}

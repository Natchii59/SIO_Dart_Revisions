import 'package:dart_application/etudiant.dart';
import 'package:test/test.dart';

void main() {
  test('Etudiant Date de naissance', () {
    DateTime now = DateTime.now();

    Etudiant etudiant = Etudiant("Caron", "Nathan", now);

    expect(etudiant.dateNaissance, now);
  });
}

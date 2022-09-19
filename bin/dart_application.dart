import 'package:dart_application/etudiant.dart';
import 'package:dart_application/section.dart';

void main(List<String> arguments) {
  Section section = Section("BTS SIO");
  init(section);

  showEtudiantName(section);
}

void init(Section section) {
  Etudiant etudiant1 = Etudiant("Caron", "Nathan", DateTime.now());
  Etudiant etudiant2 = Etudiant("Doe", "John", DateTime.now());
  Etudiant etudiant3 = Etudiant("Blanquet", "Antoine", DateTime.now());
  Etudiant etudiant4 = Etudiant("Bon", "Jean", DateTime.now());
  Etudiant etudiant5 = Etudiant("Riz", "Thie", DateTime.now());

  List<Etudiant> etudiants =
      List.from([etudiant1, etudiant2, etudiant3, etudiant4, etudiant5]);

  section.addDesEtudiants(etudiants);
}

void showEtudiantName(Section section) {
  for (var etudiant in section.listEtudiants) {
    print("- ${etudiant.nom}");
  }
}

import 'package:dart_application/etudiant.dart';

class Section {
  String _nom = "";
  int? _niveau = 1;
  final List<Etudiant> _listEtudiants = List.empty(growable: true);

  Section(String nom, {int? niveau}) {
    _nom = nom;
    _niveau = niveau;
  }

  String get nom {
    return _nom;
  }

  int? get niveau {
    return _niveau;
  }

  List<Etudiant> get listEtudiants {
    return _listEtudiants;
  }

  set nom(String nom) {
    _nom = nom;
  }

  set niveau(int? niveau) {
    _niveau = niveau;
  }

  void _sortListEtudiants() {
    _listEtudiants.sort((a, b) => a.nom.compareTo(b.nom));
  }

  void addEtudiant(Etudiant etudiant) {
    _listEtudiants.add(etudiant);
    _sortListEtudiants();
  }

  void addDesEtudiants(List<Etudiant> etudiants) {
    _listEtudiants.addAll(etudiants);
    _sortListEtudiants();
  }

  void initAppel() {
    for (var etudiant in _listEtudiants) {
      etudiant.present = true;
    }
  }

  @override
  String toString() {
    return "Nom: $_nom\nNiveau: $_niveau";
  }
}

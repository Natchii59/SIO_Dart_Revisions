import 'dart:math';

import 'package:dart_application/etudiant.dart';

class Section {
  String nom = "";
  int? niveau = 1;
  final List<Etudiant> _listEtudiants = List.empty(growable: true);

  Section(String currentNom, {int? currentNiveau}) {
    nom = currentNom;
    niveau = currentNiveau;
  }

  List<Etudiant> get listEtudiants {
    return _listEtudiants;
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

  Etudiant getUnEtudiantRandom() {
    if (_listEtudiants.isEmpty) {
      throw Exception("Il n'y a aucun étudiant dans cette section");
    }

    Etudiant etudiant = _listEtudiants[Random().nextInt(_listEtudiants.length)];

    etudiant.addDateToInterventions();

    return etudiant;
  }

  Etudiant getUnEtudiantRandom2() {
    if (_listEtudiants.isEmpty) {
      throw Exception("Il n'y a aucun étudiant dans cette section");
    }

    List<Etudiant> listSorted = _listEtudiants;
    listSorted.sort((a, b) =>
        a.getNombreInterventions().compareTo(b.getNombreInterventions()));

    print(listSorted);
    Etudiant etudiant = listSorted.first;
    etudiant.addDateToInterventions();

    return etudiant;
  }

  @override
  String toString() {
    return "Nom: $nom\nNiveau: $niveau";
  }
}

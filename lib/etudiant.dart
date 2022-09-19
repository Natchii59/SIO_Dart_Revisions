import 'package:intl/intl.dart';

class Etudiant {
  String _nom = "";
  String _prenom = "";
  DateTime _dateNaissance = DateTime.now();
  final List<DateTime> _listIntervention = List.empty(growable: true);
  bool _present = true;

  Etudiant(
    String nom,
    String prenom,
    DateTime dateNaissance,
  ) {
    this.nom = nom;
    this.prenom = prenom;
    _dateNaissance = dateNaissance;
  }

  String get nom {
    return _nom;
  }

  String get prenom {
    return _prenom;
  }

  DateTime get dateNaissance {
    return _dateNaissance;
  }

  bool get present {
    return _present;
  }

  set nom(String nom) {
    _nom = nom.toUpperCase();
  }

  set prenom(String prenom) {
    _prenom = prenom.toUpperCase();
  }

  set dateNaissance(DateTime dateNaissance) {
    _dateNaissance = dateNaissance;
  }

  set present(bool present) {
    _present = present;
  }

  int getNombreInterventions() {
    return _listIntervention.length;
  }

  void addDateToInterventions({DateTime? date}) {
    if (date != null) {
      _listIntervention.add(date);
    } else {
      _listIntervention.add(DateTime.now());
    }
  }

  @override
  String toString() {
    return "Nom: $_nom\nPrénom: $_prenom\nDate de naissance: ${DateFormat('dd/MM/yyyy').format(_dateNaissance)}\nNombre d'interventions: ${getNombreInterventions()}";
  }
}

import 'package:intl/intl.dart';

class Etudiant {
  String _nom = "";
  String _prenom = "";
  DateTime dateNaissance = DateTime.now();
  final List<DateTime> _listIntervention = List.empty(growable: true);
  bool present = true;

  Etudiant(
    String nom,
    String prenom,
    DateTime currentDateNaissance,
  ) {
    this.nom = nom;
    this.prenom = prenom;
    dateNaissance = currentDateNaissance;
  }

  String get nom {
    return _nom;
  }

  String get prenom {
    return _prenom;
  }

  set nom(String nom) {
    _nom = nom.toUpperCase();
  }

  set prenom(String prenom) {
    _prenom = prenom.toUpperCase();
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
    return "Nom: $_nom\nPrénom: $_prenom\nDate de naissance: ${DateFormat('dd/MM/yyyy').format(dateNaissance)}\nNombre d'interventions: ${getNombreInterventions()}";
  }
}

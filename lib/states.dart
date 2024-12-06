class Pays{
  String pays;
  String capital;
  String drapeau;
  String population;
  String langue;
  Pays(this.pays, this.capital, this.drapeau, this.population,this.langue);
  //getters
  String get getPays => pays;
  String get getCapital => capital;
  String get getDrapeau => drapeau;
  String get getPopulation => population;
  String get getLangue => langue;
}
abstract class PaysState {
  late Pays pays;
  PaysState(this.pays);
}

class PaysInitial extends PaysState {
  PaysInitial() : super(Pays("Tunisie", "Tunis", "assets/images/drapeaux/tn.png", "12 millions", "Arabe"));
}

class PaysSelected extends PaysState {
  PaysSelected(super.pays);
}
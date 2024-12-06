import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_essayes_med_wajih/states.dart';

class PaysCubit extends Cubit<PaysState> {
  PaysCubit(super.initialState);
  static PaysCubit get(BuildContext context) => BlocProvider.of(context);

  Pays pays = Pays("Tunisie","Tunis","assets/images/drapeaux/tn.png","12 millions","Arabe");

  void changePays(Pays pays){
    this.pays = pays;
    emit(PaysSelected(pays));
  }
}
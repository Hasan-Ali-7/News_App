import 'package:flutter_bloc/flutter_bloc.dart';
import '../hive/hive.dart';
import 'app_states.dart';

class App_Cubit extends Cubit<AppState> {
  App_Cubit() : super(AppInitialState());

  bool isDark = true;
  void changeAppMode() {
    isDark = !isDark;
    emit(ChangeAppModeState());
    HiveMethods().put('darkMode', isDark);
  }


}

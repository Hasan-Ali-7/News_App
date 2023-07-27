import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../views/allNews.dart';
import '../../../views/economyNews.dart';
import '../../../views/scienceNews.dart';
import '../../../views/sportNews.dart';
import '../../../views/techNews.dart';
import '../../hive/hive.dart';
import 'app_states.dart';


class App_Cubit extends Cubit<AppState> {
  App_Cubit() : super(AppInitialState());

  bool isDark = false;
  void changeAppMode() {
    isDark = !isDark;
    emit(ChangeAppModeState());
    HiveMethods().put('darkMode', isDark);
  }


  int currentIndex = 0;
  void changeNavBar(index) {
    currentIndex = index;
    emit(BottomNavBarState());
  }

  List<BottomNavigationBarItem> NavBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.apps,
        size: 30,
      ),
      label: 'All',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.memory,
        size: 30,
      ),
      label: 'Tech',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.attach_money_outlined,
        size: 30,
      ),
      label: 'Economy',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science_outlined,
        size: 30,
      ),
      label: 'Science',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports_volleyball_outlined,
        size: 30,
      ),
      label: 'Sport',
    ),
  ];
  List<Widget> Screens = [
    const AllNews(),
    const TechNews(),
    const EconomyNews(),
    const ScienceNews(),
    const SportNews(),
  ];
}

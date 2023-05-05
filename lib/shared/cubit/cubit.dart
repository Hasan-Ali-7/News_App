import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/network/remote/http.dart';
import 'package:news/shared/cubit/states.dart';
import '../../network/remote/http.dart';
import '../../screens/Tech.dart';
import '../../screens/business.dart';
import '../../screens/Science.dart';
import '../../screens/Sport.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(InitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeNavBar(index) {
    currentIndex = index;
    emit(BottomNavBarState());
  }

  List<BottomNavigationBarItem> NavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.memory,
        size: 30,
      ),
      label: 'Tech',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.money_off,
        size: 30,
      ),
      label: 'business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
        size: 30,
      ),
      label: 'Science',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
        size: 30,
      ),
      label: 'Sport',
    ),
  ];

  List<Widget> Screens = [
    TechScreen(),
    businessScreen(),
    ScienceScreen(),
    SportScreen(),
  ];

  Map<String, dynamic>? tech;

  getTech() async {
    tech = await NewsApi.getData(category: 'technology', country: 'us');
    emit(GetTechNews());
  }

  Map<String, dynamic>? business;

  getbusiness() async {
    business = await NewsApi.getData(category: 'business', country: 'us');
    emit(GetbusinessNews());
  }

  Map? science;

  getScience() async {
    science = await NewsApi.getData(category: 'science', country: 'us');
    emit(GetScienceNews());
  }

  Map? sports;

  getSports() async {
    sports = await NewsApi.getData(category: 'sports', country: 'eg');
    emit(GetSportNews());
  }

  bool isDark = false;

  void changeAppMode() {
    isDark = !isDark;
    emit(changeAppModeState());
  }
}

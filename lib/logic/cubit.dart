import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/logic/states.dart';
import 'package:news/view/economy.dart';
import '../models/api_service.dart';
import '../models/article.dart';
import '../view/tech.dart';
import '../view/science.dart';
import '../view/sports.dart';
import '../view/allCategories.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(InitialState());
  static NewsCubit get(context) =>
      BlocProvider.of(context);

  bool isDark = false;
  void changeAppMode() {
    isDark = !isDark;
    emit(changeAppModeState());
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
      label: 'Var',
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
      label: 'business',
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
    AllScreen(),
    TechScreen(),
    EconomyScreen(),
    ScienceScreen(),
    SportScreen(),
  ];


  List<Article>? allArticle;
  List<Article>? techArticle;
  List<Article>? sportArticle;
  List<Article>? economyArticle;
  List<Article>? scienceArticle;
  void fetchAllArticle() async {
    allArticle = await NewsApi().fetchArticles(
      country: 'us',
      category: 'general',
    );
    emit(GetAllNews());
  }
  fetchTechArticle() async {
    techArticle = await NewsApi().fetchArticles(
      country: 'us',
      category: 'technology',
    );
    emit(GetTechNews());
  }
  fetchEconomyArticle() async {
    economyArticle =
        await NewsApi().fetchArticles(
      country: 'eg',
      category: 'business',
    );
    emit(GetEconomyNews());
  }
  fetchScienceArticle() async {
    scienceArticle =
        await NewsApi().fetchArticles(
      country: 'us',
      category: 'science',
    );
    emit(GetScienceNews());
  }
  fetchSportArticle() async {
    sportArticle = await NewsApi().fetchArticles(
      country: 'eg',
      category: 'sports',
    );
    emit(GetSportNews());
  }
}

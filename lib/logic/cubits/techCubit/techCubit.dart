import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/api_service.dart';
import '../../models/article.dart';
import 'TechStates.dart';


class TechNewsCubit extends Cubit<TechNewsState> {
  TechNewsCubit() : super(TechNewsInitialState());

  String? techLocation;
  List<String> techLocations = [
    'eg',
    'ae',
    'sa',
    'us',
    'ru',
    'cn',
    'jp',
    'kr',
    'tw',
    'in',
    'br',
    'ar',
    'ca',
    'gb',
    'fr',
    'de',
    'it',
    'no',
    'ie',
  ];

  List<Article>? techArticles;
  void fetchTechArticles(String? techLocation) async {
    try {
      emit(ShowTechNewsLoading());
      techArticles = await NewsApi().fetchArticles(
        country: techLocation ?? 'us',
        category: 'technology',
      );
      emit(ShowTechNewsSuccess());
    } catch (e) {
      print(e);
    }
  }

}

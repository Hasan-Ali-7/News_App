import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/api_service.dart';
import '../../models/article.dart';
import 'SportStates.dart';


class SportNewsCubit extends Cubit<SportNewsState> {
  SportNewsCubit() : super(SportNewsInitialState());

  String? sportLocation;
  List<String> sportLocations = [
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

  List<Article>? sportArticles;
  void fetchSportArticles(String? sportLocation) async {
    try {
      emit(ShowSportNewsLoading());
      sportArticles = await NewsApi().fetchArticles(
        country: sportLocation ?? 'us',
        category: 'sports',
      );
      emit(ShowSportNewsSuccess());
    } catch (e) {
      print(e);
      // emit(ShowSportNewsFialed(e.toString()));
    }
  }

}

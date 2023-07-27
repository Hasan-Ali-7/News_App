import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/api_service.dart';
import '../../models/article.dart';
import 'ScienceStates.dart';


class ScienceNewsCubit extends Cubit<ScienceNewsState> {
  ScienceNewsCubit() : super(ScienceNewsInitialState());

  String? scienceLocation;
  List<String> scienceLocations = [
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

  List<Article>? scienceArticles;
  void fetchScienceArticles(String? scienceLocation) async {
    try {
      emit(ShowScienceNewsLoading());
      scienceArticles = await NewsApi().fetchArticles(
        country: scienceLocation ?? 'us',
        category: 'science',
      );
      emit(ShowScienceNewsSuccess());
    } catch (e) {
      print(e);
      // emit(ShowScienceNewsFialed(e.toString()));
    }
  }

}

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/api_service.dart';
import '../../models/article.dart';
import 'allNewsStates.dart';


class AllNewsCubit extends Cubit<AllNewsState> {
  AllNewsCubit() : super(AllNewsInitialState());

  String? allLocation;
  List<String> allLocations = [
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

  List<Article>? allArticles;
  void fetchAllArticles(String? allLocation) async {
    try {
      emit(ShowAllNewsLoading());
      allArticles = await NewsApi().fetchArticles(
        country: allLocation ?? 'us',
        category: 'general',
      );
      emit(ShowAllNewsSuccess());
    } catch (e) {
      print(e);
    }
  }

}

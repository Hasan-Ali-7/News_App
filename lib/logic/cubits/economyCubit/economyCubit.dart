import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/api_service.dart';
import '../../models/article.dart';
import 'economyStates.dart';


class EconomyNewsCubit extends Cubit<EconomyNewsState> {
  EconomyNewsCubit() : super(EconomyNewsInitialState());

  String? economyLocation;
  List<String> economyLocations = [
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

  List<Article>? economyArticles;
  void fetchEconomyArticles(String? economyLocation) async {
    try {
      emit(ShowEconomyNewsLoading());
      economyArticles = await NewsApi().fetchArticles(
        country: economyLocation ?? 'us',
        category: 'business',
      );
      emit(ShowEconomyNewsSuccess());
    } catch (e) {
      print(e);
      // emit(ShowEconomyNewsFialed(e.toString()));
    }
  }

}

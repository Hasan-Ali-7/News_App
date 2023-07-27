abstract class ScienceNewsState {}

class ScienceNewsInitialState extends ScienceNewsState {}

class ShowScienceNewsLoading extends ScienceNewsState {}

class ShowScienceNewsSuccess extends ScienceNewsState {}

class ShowScienceNewsFialed extends ScienceNewsState {
  final String errorMessage;
  ShowScienceNewsFialed(this.errorMessage);
}
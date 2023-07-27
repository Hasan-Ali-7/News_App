abstract class SportNewsState {}

class SportNewsInitialState extends SportNewsState {}

class ShowSportNewsLoading extends SportNewsState {}

class ShowSportNewsSuccess extends SportNewsState {}

class ShowSportNewsFialed extends SportNewsState {
  final String errorMessage;
  ShowSportNewsFialed(this.errorMessage);
}
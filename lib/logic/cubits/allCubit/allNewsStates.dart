
abstract class AllNewsState {}

class AllNewsInitialState extends AllNewsState {}

class ShowAllNewsLoading extends AllNewsState {}

class ShowAllNewsSuccess extends AllNewsState {}

class ShowAllNewsFialed extends AllNewsState {
  final String errorMessage;
  ShowAllNewsFialed(this.errorMessage);
}
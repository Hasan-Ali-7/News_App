abstract class TechNewsState {}

class TechNewsInitialState extends TechNewsState {}

class ShowTechNewsLoading extends TechNewsState {}

class ShowTechNewsSuccess extends TechNewsState {}

class ShowTechNewsFialed extends TechNewsState {
  final String errorMessage;
  ShowTechNewsFialed(this.errorMessage);
}
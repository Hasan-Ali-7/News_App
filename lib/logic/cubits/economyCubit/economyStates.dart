abstract class EconomyNewsState {}

class EconomyNewsInitialState extends EconomyNewsState {}

class ShowEconomyNewsLoading extends EconomyNewsState {}

class ShowEconomyNewsSuccess extends EconomyNewsState {}

class ShowEconomyNewsFialed extends EconomyNewsState {
  final String errorMessage;
  ShowEconomyNewsFialed(this.errorMessage);
}
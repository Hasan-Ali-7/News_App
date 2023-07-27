
abstract class AppState {}

class AppInitialState extends AppState {}

class ChangeAppModeState extends AppState {}

class ShowAllNewsLoading extends AppState {}

class ShowAllNewsSuccess extends AppState {}

class ShowAllNewsFialed extends AppState {
  final String errorMessage;
  ShowAllNewsFialed(this.errorMessage);
}
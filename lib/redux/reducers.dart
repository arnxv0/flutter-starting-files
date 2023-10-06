import '../redux/store.dart';
import '../services/dart_theme_preferences.dart';
import 'actions.dart';

AppState reducers(AppState prevState, dynamic action) {
  AppState newState;
  if (action is ToggleTheme) {
    DarkThemePreference darkThemePreference = DarkThemePreference();
    darkThemePreference.setDarkTheme(action.darkTheme);
    newState = AppState.copyWith(prev: prevState, darkTheme: action.darkTheme);
  } else if (action is UpdateNewUser) {
    newState = AppState.copyWith(prev: prevState, user: action.newUser);
  } else if (action is ClearUser) {
    newState = AppState.copyWith(prev: prevState);
    newState.user = null;
  } else {
    newState = AppState.copyWith(prev: prevState);
  }
  return newState;
}

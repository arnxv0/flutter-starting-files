import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_scaled_box.dart';

import './redux/actions.dart';
import './redux/reducers.dart';
import './redux/store.dart';
import './screens/home/home.dart';
import './services/dart_theme_preferences.dart';
import './utilities/constants.dart';
import './utilities/styles.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late BuildContext appStateContext;
  bool _getThemeFlag = false;
  final Store<AppState> _store =
      Store(reducers, initialState: AppState.initial());

  @override
  void initState() {
    super.initState();
  }

  void getCurrentAppTheme(appStateContext) async {
    DarkThemePreference darkThemePreference = DarkThemePreference();
    bool isDarkTheme = await darkThemePreference.getTheme();
    StoreProvider.of<AppState>(appStateContext)
        .dispatch(ToggleTheme(darkTheme: isDarkTheme));
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: _store,
      child: StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          appStateContext = context;
          if (!_getThemeFlag) {
            getCurrentAppTheme(appStateContext);
            _getThemeFlag = true;
          }
          return MaterialApp(
            // localizationsDelegates: const [
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            // ],
            // supportedLocales: const [
            //   Locale('en', 'US'), // English
            //   Locale('th', 'TH'), // Thai
            // ],
            theme: Styles.themeData(state.darkTheme),
            debugShowCheckedModeBanner: isProdApp ? false : true,
            builder: (context, child) => ResponsiveBreakpoints.builder(
              child: (MediaQuery.of(context).size.width <= 400)
                  ? ResponsiveScaledBox(width: 400, child: child!)
                  : child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
            ),
            routes: {
              Home.routeName: (context) => Home(),
            },
          );
        },
      ),
    );
  }
}

// MaterialApp(
// theme: ThemeData(
// fontFamily: 'Manrope',
// scaffoldBackgroundColor: const Color(0xff202020),
// ),
// debugShowCheckedModeBanner: false,
// routes: {
// SplashScreen.routeName: (context) => SplashScreen(),
// LoginPage.routeName: (context) => LoginPage(),
// Home.routeName: (context) => Home(),
// },
// );

// StoreConnector<AppState, AppState>(
// converter: (store) => store.state,
// builder: (context, state) => Text('hi'))

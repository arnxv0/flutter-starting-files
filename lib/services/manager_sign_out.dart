import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../redux/actions.dart';
import '../redux/store.dart';

class ManagerSignOut {
  static Future<void> signOut(BuildContext context, bool mounted) async {
    StoreProvider.of<AppState>(context).dispatch(
      ClearUser(),
    );

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    if (!mounted) return;
    await Navigator.of(context).pushNamedAndRemoveUntil(
      '/',
      (Route<dynamic> route) => false,
    );
  }
}

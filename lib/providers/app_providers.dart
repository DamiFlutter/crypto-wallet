import 'package:events/styles/themes.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier {
  AppProvider() {
    checkTheme();
  }

  ThemeData theme = ThemeConfig.lightThme;

  Key key = UniqueKey();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void setKey(value) {
    key = value;
    notifyListeners();
  }

  void setNavigatorKey(value) {
    navigatorKey = value;
    notifyListeners();
  }

  // change the Theme in the provider and SharedPreferences
  void setTheme(value, c) async {
    theme = value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', c);

    notifyListeners();
  }

  void setNotification(value, n) async {
    SharedPreferences notifs = await SharedPreferences.getInstance();
    await notifs.setString('notifs', n);
  }

  ThemeData getTheme(value) {
    return theme;
  }

  Future<ThemeData> checkTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    ThemeData t;
    String r = prefs.getString('theme') ?? 'light';

    if (r == 'light') {
      t = ThemeConfig.lightThme;
      setTheme(ThemeConfig.lightThme, 'light');
    } else {
      t = ThemeConfig.darkTheme;
      setTheme(ThemeConfig.darkTheme, 'dark');
    }

    return t;
  }
}
// void getPermission()async{
//   //    var status = await Permission.notification.status;
//   //     if(status.isGranted){
//   //      await Permission.notification.request();
//   //      print('permission granted....');
//   //     }
//   //   if (status.isDenied) {
//   //     // We didn't ask for permission yet.
//   //     print('permission denied....');
//   //   }

//   //   // You can can also directly ask the permission about its status.
//   //   if (await Permission.location.isRestricted) {
//   //      // The OS restricts access, for example because of parental controls.
//   //   }
//   // }
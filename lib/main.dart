import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pages/login.dart';
import 'providers/app_providers.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AppProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
        builder: (context, AppProvider appProvider, _) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: themeData(appProvider.theme),
        home: const LoginPage(),
      );
    });
  }
}

ThemeData themeData(ThemeData theme) {
  return theme.copyWith(
    textTheme: GoogleFonts.balooBhai2TextTheme(
      theme.textTheme,
    ),
  );
}

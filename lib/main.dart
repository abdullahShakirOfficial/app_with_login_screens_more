import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/pages/signIn_page.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      themeMode: ThemeMode.light,
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/': (context) => SignInPage(),
      },
    );
  }
}

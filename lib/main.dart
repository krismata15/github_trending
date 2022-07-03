import 'package:flutter/material.dart';
import 'package:github_trending/utils/styles.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Trending',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.openSansTextTheme(
          ThemeData(brightness: Brightness.dark).textTheme,
        ),
        primaryColor: Styles.kPrimaryColor,
        primaryColorDark: Styles.kPrimaryColor,
        scaffoldBackgroundColor: Styles.kPrimaryColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          color: Styles.kPrimaryColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Trending'),
      ),
    );
  }
}

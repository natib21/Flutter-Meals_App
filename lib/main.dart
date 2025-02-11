import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app_flutter/screens/catagories.dart';

final theme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: Color.fromARGB(255, 131, 57, 0)),
    textTheme: GoogleFonts.latoTextTheme());
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: CatagoriesScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: Text('Hello World',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
      ),
    );
  }
}

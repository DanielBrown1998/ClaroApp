import 'package:app/screens/home.dart';
import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClaroHelp());
}

class ClaroHelp extends StatelessWidget {
  const ClaroHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Claro Ajuda',
      theme: ThemeData(
        appBarTheme: ClaroThemeData.appBarTheme,
        cardColor: ClaroThemeData.cardColor,
        textTheme: ClaroThemeData.textTheme,
        primaryColor: ClaroThemeData.primaryColor,
      ),
      home: const Home(title: 'Claro Ajuda'),
    );
  }
}

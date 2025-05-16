import 'package:app/screens/aula_video.dart';
import 'package:app/screens/help_fast.dart';
import 'package:app/screens/tutoriais.dart';
import 'package:app/screens/home.dart';
import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClaroZ());
}

class ClaroZ extends StatelessWidget {
  const ClaroZ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Claro Z',
      theme: ThemeData(
        appBarTheme: ClaroThemeData.appBarTheme,
        cardColor: ClaroThemeData.cardColor,
        textTheme: ClaroThemeData.textTheme,
        primaryColor: ClaroThemeData.primaryColor,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(title: 'Claro Z'),
        "tutoriais": (context) => const Tutoriais(),
        "help": (context) => const HelpFast(),
        "aula": (context) => const VideoAula(),
      },
    );
  }
}

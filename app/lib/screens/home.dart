import 'package:app/components/grid_item.dart';
import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> map = [
    {"name": "Tutoriais", "icon": Icons.video_chat, "function": () {}},
    {
      "name": "Video em Aula",
      "icon": Icons.play_circle_outline_sharp,
      "function": () {},
    },
    {
      "name": "Ajuda Rapida",
      "icon": Icons.support_agent_sharp,
      "function": () {},
    },
    {"name": "Quiz", "icon": Icons.question_mark, "function": () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        primary: true,
        actionsIconTheme: Theme.of(context).appBarTheme.actionsIconTheme,
        title: Text(widget.title),
      ),
      body: GridView.builder(
        itemCount: map.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          
        ),
        itemBuilder: (context, index) {
          return GridItem(
            text: map[index]["name"],
            icon: map[index]["icon"],
            onClick: map[index]["function"],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: PaletteColors.primaryColors,
        onPressed: () {},
        tooltip: 'Increment',
        elevation: 20,
        child: Icon(
          Icons.wechat_sharp,
          color: PaletteColors.colorTitleTextItem,
        ),
      ),
    );
  }
}

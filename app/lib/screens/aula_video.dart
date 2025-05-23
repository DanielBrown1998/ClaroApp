import 'package:app/components/list_item.dart';
import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

class VideoAula extends StatelessWidget {
  const VideoAula({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        "icon": Icons.phone,
        "text": "Como usar o App minha claro",
        "function": () {},
      },
      {
        "icon": Icons.message,
        "text": "Como mudar meu plano",
        "function": () {},
      },
      {
        "icon": Icons.wallet,
        "text": "Como configrurar claro-tv",
        "function": () {},
      },
      {
        "icon": Icons.wifi,
        "text": "Como configurar o meu wi-fi",
        "function": () {},
      },
    ];

    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: Theme.of(context).appBarTheme.actionsIconTheme,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 10,
        title: Text(
          "Aulas em Video",
          style: TextStyle(color: PaletteColors.colorTitleTextItem),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListItem(
                    icon: list[index]["icon"],
                    text: list[index]["text"],
                    onClick: () {
                      print(list[index]["text"]);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:app/components/grid_item.dart';
import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

class HelpFast extends StatelessWidget {
  const HelpFast({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        "icon": Icons.phone,
        "text": "Ligar para o suporte Claro",
        "function": () {},
      },
      {
        "icon": Icons.support_agent_outlined,
        "text": "Falar com atendente",
        "function": () {},
      },
    ];

    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: Theme.of(context).appBarTheme.actionsIconTheme,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 10,
        title: Text(
          "Ajuda Rapida",
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
                  return SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: GridItem(
                      icon: list[index]["icon"],
                      text: list[index]["text"],
                      route: "",
                    ),
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

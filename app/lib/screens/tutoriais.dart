import 'package:app/components/list_item.dart';
import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

class Tutoriais extends StatelessWidget {
  const Tutoriais({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        "icon": Icons.phone,
        "text": "Configurar Wi-fi mesh",
        "function": () {
          print("chamadas");
        },
      },
      {
        "icon": Icons.message,
        "text": "Canais Claro",
        "function": () {
          print("whatsapp");
        },
      },
      {
        "icon": Icons.wallet,
        "text": "Minhas faturas",
        "function": () {
          print("faturas");
        },
      },
      {
        "icon": Icons.wifi,
        "text": "Como gerenciar o meu Wi-fi",
        "function": () {
          print("wi-fi");
        },
      },
      {
        "icon": Icons.auto_awesome,
        "text": "Como automatizar tarefas",
        "function": () {
          print("wi-fi");
        },
      },
      {
        "icon": Icons.integration_instructions,
        "text": "Claro e I.A",
        "function": () {
          print("wi-fi");
        },
      },
      {
        "icon": Icons.stream,
        "text": "Vincular Streaming",
        "function": () {
          print("wi-fi");
        },
      },
    ];

    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: Theme.of(context).appBarTheme.actionsIconTheme,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 10,
        title: Text(
          "Claro Ajuda",
          style: TextStyle(color: PaletteColors.colorTitleTextItem),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tutoriais",
                  textAlign: TextAlign.left,

                  style: TextStyle(
                    color: PaletteColors.textColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListItem(
                    icon: list[index]["icon"],
                    text: list[index]["text"],
                    onClick: list[index]["function"],
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

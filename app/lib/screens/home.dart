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
    {"name": "Tutoriais", "icon": Icons.video_chat, "route": "tutoriais"},
    {
      "name": "Video em Aula",
      "icon": Icons.play_circle_outline_sharp,
      "route": "aula",
    },
    {
      "name": "Ajuda Rapida",
      "icon": Icons.support_agent_sharp,
      "route": "help",
    },
    {
      "name": "Perguntas Frequentes",
      "icon": Icons.question_mark,
      "route": "questions",
    },
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController prompt = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        primary: true,
        actionsIconTheme: Theme.of(context).appBarTheme.actionsIconTheme,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 250,
              width: double.maxFinite,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0, left: 24, top: 8, bottom: 8),
                    child: Center(
                      child: Text("Oi, eu sou Rafaela, sua I.A para suporte, como eu poderia te ajudar hoje? ", style: TextStyle(
                        color: PaletteColors.textColor, 
                        fontSize: 20,
                        fontStyle: FontStyle.italic
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      controller: prompt,
                      cursorColor: PaletteColors.primaryColors,
                      decoration: InputDecoration(
                        labelText: "digite seu problema aqui!",
                        icon: Icon(Icons.search, size: 24,),
                        iconColor: PaletteColors.primaryColors,
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: PaletteColors.primaryColors,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: (){}, child: Text("buscar", style: TextStyle(
                    color: PaletteColors.primaryColors
                  ),))
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: map.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return GridItem(
                  text: map[index]["name"],
                  icon: map[index]["icon"],
                  route: map[index]["route"],
                );
              },
            ),
          ),
        ],
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

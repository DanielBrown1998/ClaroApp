import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final String route;

  const GridItem({
    super.key,
    required this.icon,
    required this.text,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: PaletteColors.backgroundCardColor,
        child: InkWell(
          splashColor: PaletteColors.primaryColors,
          borderRadius: BorderRadius.circular(12),
          onTap: () async {
            Navigator.of(context).pushNamed(route);
          },
          child: Card(
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Icon(
                    icon,
                    color: PaletteColors.primaryColors,
                    size: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: PaletteColors.textColor,
                      fontSize: 24,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

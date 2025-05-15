import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onClick;

  const GridItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 200,
          minHeight: 350,
          maxWidth: double.maxFinite / 2,
          maxHeight: double.maxFinite / 2,
        ),
        child: Material(
          color: PaletteColors.backgroundCardColor,
          child: InkWell(
            onTap: onClick(),
            child: Card(
              elevation: 5,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon, color: PaletteColors.primaryColors, size: 80),
                  Text(
                    text,
                    style: TextStyle(
                      color: PaletteColors.textColor,
                      fontSize: 24,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

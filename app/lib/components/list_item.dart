import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final IconData icon;
  final Function onClick;
  final String text;
  const ListItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onClick,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      color: PaletteColors.backgroundCardColor,
      child: InkWell(
        onTap: onClick(),
        child: Card(
          child: Row(
            children: [
              Icon(icon, color: PaletteColors.primaryColors),
              Text(text, style: TextStyle(color: PaletteColors.textColor,)),
            ],
          ),
        ),
      ),
    );
  }
}

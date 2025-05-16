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
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 8,
      child: Material(
        color: PaletteColors.backgroundCardColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          splashColor: PaletteColors.primaryColors,
          onTap: () async{
            onClick();
          },
          child: Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                    left: 16,
                    right: 16,
                  ),
                  child: Icon(
                    icon,
                    color: PaletteColors.primaryColors,
                    size: 40,
                  ),
                ),
                Text(text, style: TextStyle(color: PaletteColors.textColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

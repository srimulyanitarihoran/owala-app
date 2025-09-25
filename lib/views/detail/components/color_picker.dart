import 'package:flutter/material.dart';
import 'package:owala_app/utils/const.dart';

class ColorPicker extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorPicker({super.key, required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      // untuk color picker
      margin: EdgeInsets.only(
        left: defaultPadding,
        // right: defaultPadding / 4
        ),
        // jarak dari color picker ke teks color
        padding: EdgeInsets.all(2.5),
        width: 20,
        height: 20,
        // unutk memodifikasi border dari color picker
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        )
    );
  }
}
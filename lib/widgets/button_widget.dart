import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buttonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double textSize;
  final Function click;

  const buttonWidget(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      required this.textSize,
      required this.click});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 80,
        width: 80,
        child: ElevatedButton(
          onPressed: () {
            click(text);
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: backgroundColor),
          child: Text(
            text,
            style: GoogleFonts.rubik(color: textColor, fontSize: textSize),
          ),
        ),
      ),
    );
  }
}

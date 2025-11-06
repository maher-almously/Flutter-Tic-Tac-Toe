import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
   StartScreen({required this.next, super.key});

  void Function() next;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 300),

        Text(
          "Tic-Tac-Toe",
          style: GoogleFonts.bebasNeue(
            color: Colors.white,
            fontSize: 100,
          ),
        ),
        SizedBox(height: 70),

        ElevatedButton.icon(
          onPressed: next,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          label: Text(
            "Begin",
            style: GoogleFonts.dmSans(fontSize: 35, color: Colors.black),
          ),
          icon: Icon(Icons.double_arrow_sharp, color: const Color.fromARGB(255, 0, 0, 0), size: 35),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorView extends StatelessWidget {
  final String message;

  const ErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      message,
      style: GoogleFonts.aBeeZee(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Text("Hello $name!!",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 20)),
            Text("Where do you want to go?",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: const Color(0xFF656565).withOpacity(0.63))),
          ],
        ),
      ),
    );
  }
}

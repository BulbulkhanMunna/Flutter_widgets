import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  ThemeData lightTheme(context)=> ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(),
    primarySwatch: Colors.blue,
    //textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply()),
  );

  ThemeData darkTheme(context)=> ThemeData(
    colorScheme: const ColorScheme.dark(),
    primarySwatch: Colors.amber,
    //textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply()),
  );
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // AppBar text remains Inter
    headlineLarge: GoogleFonts.inter(
      fontSize: 40.0, 
      fontWeight: FontWeight.bold, 
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 30.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    
    // All other text styles use Roboto
    titleLarge: GoogleFonts.roboto(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black.withOpacity(0.7),
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    // AppBar text remains Inter
    headlineLarge: GoogleFonts.inter(
      fontSize: 40.0, 
      fontWeight: FontWeight.bold, 
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 30.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    
    // All other text styles use Roboto
    titleLarge: GoogleFonts.roboto(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white.withOpacity(0.7),
    ),
  );
}


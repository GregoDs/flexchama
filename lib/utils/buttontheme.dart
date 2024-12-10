import 'package:flutter/material.dart';

class TButtonTheme {
  TButtonTheme._();

  // Elevated Button Theme
  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white, // Text color
    backgroundColor: Colors.blue, // Button color
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: Colors.grey,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),),
  );

  // Outlined Button Theme
  static final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: Colors.blue, // Text color
    side: const BorderSide(color: Colors.blue, width: 2), // Border color
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  );

  // Light Theme Button Theme Data
  static final ButtonThemeData lightButtonTheme = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    buttonColor: Colors.blue, // Used for ElevatedButton by default
    textTheme: ButtonTextTheme.primary,
  );

  // Dark Theme Button Theme Data
  static final ButtonThemeData darkButtonTheme = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    buttonColor: Colors.deepPurple, // Used for ElevatedButton by default
    textTheme: ButtonTextTheme.primary,
  );

  // Light Theme Elevated Button Theme
  static ElevatedButtonThemeData get lightElevatedButtonTheme {
    return ElevatedButtonThemeData(style: elevatedButtonStyle);
  }

  // Dark Theme Elevated Button Theme
  static ElevatedButtonThemeData get darkElevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),),
        
      ),
    );
  }

  // Light Theme Outlined Button Theme
  static OutlinedButtonThemeData get lightOutlinedButtonTheme {
    return OutlinedButtonThemeData(style: outlinedButtonStyle);
  }

  // Dark Theme Outlined Button Theme
  static OutlinedButtonThemeData get darkOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.deepPurple,
        side: const BorderSide(color: Colors.deepPurple, width: 2),
      ),
    );
  }
}

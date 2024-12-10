import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Set up the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // Start the animation
    _controller.forward();

    // Navigate after the animation completes
    _controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        _navigateToNextScreen();
      }
    });
  }

  // Logic to navigate to the next screen after animation completes
  Future<void> _navigateToNextScreen() async {
    // For now, navigate to the home screen (or any other screen you prefer)
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF337687), // Background color of the splash screen
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset(
            'lib/assets/logo/logo.png', // Path to your logo image
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background gradient
        Container(
          height: 278.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 38, 102, 158), // Darker blue
                Color(0xFF90CAF9), // Lighter blue
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Polygonal shapes as background
        ClipPath(
          clipper: CustomShape1(),
          child: Container(
            height: 250.0,
            color: Colors.white.withOpacity(0.15),
          ),
        ),
        ClipPath(
          clipper: CustomShape2(),
          child: Container(
            height: 250.0,
            color: Colors.white.withOpacity(0.10),
          ),
        ),
        // AppBar content
        const AppBarHome(),
      ],
    );
  }
}


class CustomShape1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start at the bottom-left corner
    path.moveTo(0, size.height); 
    
    // Draw a line to the top-left corner
    path.lineTo(0, size.height * 0.5); 
    
    // Draw the slanted line (hypotenuse) towards the top-right
    path.lineTo(size.width * 0.5, 0);
    
   
    path.lineTo(size.width, 0); 
    
    // Connect back to the starting point to close the shape
    path.lineTo(0, size.height); 
    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // No need to reclip; the shape is static.
  }
}



class CustomShape2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.2, size.height);
    path.lineTo(size.width * 0.8, size.height * 0.6);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
} 



class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white70),
                    ),
                    Text(
                      'John Doe',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
  const SizedBox(height: 20.0),
Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, 
    crossAxisAlignment: CrossAxisAlignment.center, 
    children: [
      Text(
        'Available balance',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white70),
      ),
      const SizedBox(height: 5.0),
      Text(
        'Ksh 50,000',
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(color: Colors.white),
      ),
    ],
  ),
),

          ],
        ),
      ),
    );
  }
}
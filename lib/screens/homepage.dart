import 'package:flexchama/screens/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flexchama/screens/appbar.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onNavItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
      // WILL COME TO Add navigation logic 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(278.0),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First Section: Icons (Top Up, Shop, Withdraw)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildIconWithLabel(Icons.attach_money, 'Top Up'),
                  _buildIconWithLabel(Icons.shopping_cart, 'Shop'),
                  _buildIconWithLabel(Icons.account_balance_wallet, 'Withdraw'),
                ],
              ),
            ),
            const SizedBox(height: 40.0),

            // Second Section: Set a Personal Goal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Set a personal goal',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: const Color.fromARGB(255, 38, 102, 158),
                    ),
                  ),
                  Text(
                    'View All',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  _buildGoalCard(),
                  const SizedBox(width: 10.0),
                  _buildGoalCard(),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // Third Section: Spread the Word
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                padding: const EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Centers horizontally
                    crossAxisAlignment: CrossAxisAlignment.center, // Centers vertically
                    children: [
                      const Icon(
                        Icons.campaign,
                        color: Color.fromARGB(255, 40, 104, 156),
                        size: 30.0,
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        'Spread the word!',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // Floating Navigation Bar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onNavItemSelected,
      ),
    );
  }

  // Helper Widgets to Build an Icon with a Label
  Widget _buildIconWithLabel(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundColor: const Color.fromARGB(255, 42, 119, 182),
          child: Icon(icon, size: 30.0, color: Colors.white),
        ),
        const SizedBox(height: 5.0),
        Text(label),
      ],
    );
  }

  // Helper Widget to Build a Goal Card
  Widget _buildGoalCard() {
    return Expanded(
      child: Container(
        height: 125.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
            image: AssetImage('lib/assets/logo/setGoals.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Create own Goal',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flexchama/screens/homepage.dart';
import 'package:flexchama/screens/splashscreen.dart';
import 'package:get/get.dart';

class Routes {
  static const String splash = '/';
  static const String home = '/home';
  static const String login = '/login';
  // Add more routes as needed

  static List<GetPage> pages = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: home, page: () =>  const HomeScreen()), 
    
  ];
}

import 'package:flexchama/utils/routes.dart';
import 'package:flexchama/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FlexChamaApp());
}

class FlexChamaApp extends StatelessWidget {
  const FlexChamaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     themeMode: ThemeMode.system,
     theme: TAppTheme.lightTheme,
     darkTheme: TAppTheme.darkTheme,
     initialRoute: Routes.splash,
     getPages: Routes.pages,
     
     );
  }
}

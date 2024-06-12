import 'package:flutter/material.dart';
import 'package:qr_code/views/homeView.dart';
import 'package:flutter/services.dart';

// Entry point of the application
void main() {
  runApp(const MainAppView());
}

class MainAppView extends StatelessWidget {
  const MainAppView({super.key});

  @override
  Widget build(BuildContext context) {
    // Locks the orientation to portrait mode (both up and down)
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // Sets the system UI overlay style, including the navigation bar color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Color.fromARGB(255, 231, 227, 207)));

    // Defines the root of the application
    return const MaterialApp(
      // Hides the debug banner in the top right corner
      debugShowCheckedModeBanner: false,
      // Specifies the home widget to be displayed
      home: MainView(),
      // Sets the title of the application
      title: "MOE Scanner",
    );
  }
}

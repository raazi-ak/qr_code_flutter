import 'package:flutter/material.dart';
import 'package:qr_code/views/homeView.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainAppView());
}

class MainAppView extends StatelessWidget {
  const MainAppView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Color.fromARGB(255, 231, 227, 207)));

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(),
      title: "MOE Scanner",
    );
  }
}

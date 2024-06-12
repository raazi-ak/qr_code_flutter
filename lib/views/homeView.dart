import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/views/scanner.dart';
import 'package:qr_code/widgets/textWidget.dart';

class MainView extends StatelessWidget {
  const MainView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic material design visual layout structure.
      appBar: AppBar(
        // Sets the height of the AppBar to 150 pixels.
        toolbarHeight: 150,
        // Sets the background color of the AppBar.
        backgroundColor: const Color.fromARGB(255, 231, 227, 207),
        title: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Adds a vertical space of 50 pixels.
            const SizedBox(
              height: 50,
            ),
            Center(
              // Displays the SVG logo at the center of the AppBar.
              child: SvgPicture.asset('assets/svg/logo.svg'),
            ),
          ],
        ),
      ),
      // Sets the background color of the Scaffold.
      backgroundColor: const Color.fromARGB(255, 231, 227, 207),
      body: const Column(
        // Centers the children vertically within the column.
        mainAxisAlignment: MainAxisAlignment.center,
        // Ensures the column takes up as much vertical space as possible.
        mainAxisSize: MainAxisSize.max,
        // Centers the children horizontally within the column.
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // The QRScanner widget is used to scan QR codes.
          QRScanner(),
          // The TextWidget displays some text.
          Center(child: TextWidget()),
        ],
      ),
    );
  }
}

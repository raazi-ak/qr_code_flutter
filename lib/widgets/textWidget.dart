import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Get the size of the device's screen
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    // Return a container widget with specific height and width based on screen size
    return Container(
      height: height * 0.275,
      width: width * 0.85,
      child: Column(
        // Use maximum available size for the column
        mainAxisSize: MainAxisSize.max,
        // Center the children vertically within the column
        mainAxisAlignment: MainAxisAlignment.center,
        // Center the children horizontally within the column
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Main title text
          Text(
            "Scannen Sie den QR-Code", // Text to be displayed
            style: GoogleFonts.roboto(
                // Use the Roboto font
                textStyle: const TextStyle(
                    color: Colors.black, // Set text color to black
                    fontWeight: FontWeight.w700, // Bold font weight
                    fontSize: 24)), // Font size 24
          ),
          // Subtitle text container with padding and margin
          Container(
            padding: const EdgeInsets.all(6), // Padding inside the container
            margin: const EdgeInsets.all(2), // Margin outside the container
            child: Text(
              "Scannen Sie den QR-Code auf der Unterseite des Gateways, um die Installation fortzusetzen", // Subtitle text
              style: GoogleFonts.roboto(
                  // Use the Roboto font
                  textStyle: const TextStyle(
                      height: 1.25, // Line height
                      color: Colors
                          .black54, // Set text color to a lighter shade of black
                      fontWeight: FontWeight.w500, // Medium font weight
                      fontStyle: FontStyle.italic, // Italic text style
                      fontSize: 13)), // Font size 13
              softWrap: true, // Enable soft wrapping of text
              textAlign: TextAlign.center, // Center the text
            ),
          )
        ],
      ),
    );
  }
}

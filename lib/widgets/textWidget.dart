import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
      height: height * 0.275,
      width: width * 0.85,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Scannen Sie den QR-Code",
            style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 24)),
          ),
          Container(
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.all(2),
            child: Text(
              "Scannen Sie den QR-Code auf der Unterseite des Gateways, um die Installation fortzusetzen",
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      height: 1.25,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontSize: 13)),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

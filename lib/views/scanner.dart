import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter/services.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({
    super.key,
  });

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  bool isScanCompleted = false;

  // Method to reset the scan status
  void returnToScanner() {
    setState(() {
      isScanCompleted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    // Widget structure for the QR scanner
    return Container(
      width: width * 0.85,
      height: height * 0.45,
      child: Stack(
        children: [
          // MobileScanner widget for scanning QR codes
          MobileScanner(
            onDetect: (barcodes) async {
              if (!isScanCompleted) {
                // Get the raw value of the scanned QR code
                String? raw = barcodes.barcodes[0].rawValue ?? "NULL";
                isScanCompleted = true;
                // Show an alert dialog with the scanned QR code content
                await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 231, 227, 207),
                        title: const Text("QR Content"),
                        content: Container(
                          height: height * 0.1,
                          width: width * 0.6,
                          child: Text(raw),
                        ),
                        actions: [
                          // Button to copy the QR code content to the clipboard
                          TextButton(
                              onPressed: () async {
                                await Clipboard.setData(
                                        ClipboardData(text: raw))
                                    .then((_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "Content copied to clipboard")));
                                });
                              },
                              child: const Text(
                                "Copy",
                                style: TextStyle(color: Colors.black),
                              )),
                          // Button to dismiss the alert dialog
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Dismiss",
                                style: TextStyle(color: Colors.black),
                              ))
                        ],
                      );
                    });
                // Reset the scan status to allow scanning again
                returnToScanner();
              }
            },
          ),
          // Overlay for the QR scanner to highlight the scanning area
          QRScannerOverlay(
            borderColor: Colors.black,
            overlayColor: const Color.fromARGB(255, 231, 227, 207),
            borderRadius: 20,
            scanAreaHeight: height * 0.35,
            scanAreaWidth: width * 0.75,
          )
        ],
      ),
    );
  }
}

# QR Code Scanner (Flutter)
This Flutter project is a simple and efficient QR Code Reader application. The application scans QR codes, displays the decoded text in a pop-up dialog, and allows the user to copy the decoded text to the clipboard with a single tap.

## Overview

This Flutter project is a simple and efficient QR Code Reader application. The application scans QR codes, displays the decoded text in a pop-up dialog, and allows the user to copy the decoded text to the clipboard with a single tap.

## Features

- **QR Code Scanning:** Uses the camera to scan QR codes in real-time.
- **Pop-Up Dialog:** Displays the decoded QR code text in a pop-up dialog.
- **Clipboard Copy:** Allows users to copy the decoded text to the clipboard directly from the pop-up dialog.

## Screenshots

### Main Screen
![Screen1](screenshots/Screen1.png?raw=true "Main Screen")
### Result Screen
![Screen2](screenshots/Screen2.png?raw=true "Result Screen")
### Activity Blocked State
![Screen3](screenshots/Screen3.png?raw=true "Activity Blocked State")

# Getting Started

## Pre-Requisites

- **Flutter SDK:** Install Flutter
- **Compatible IDE:** Android Studio or Visual Studio Code

## Installation

1.  Clone the repository.

```bash
  git clone https://github.com/raazi-ak/qr_code_flutter
  cd qr_code_flutter
```

2. Install dependencies.

```bash
    flutter pub get
```

3. Run the app.

```bash
    flutter run --debug
```

# Usage

1. Open the application.
2. Point the camera at a QR code.
3. The decoded text will appear in a pop-up dialog.
4. Tap the "Copy" button to copy the decoded text.

# Dependencies

- [Flutter SVG](https://pub.dev/packages/flutter_svg)
- [Mobile Scanner](https://pub.dev/packages/mobile_scanner)
- [QR Scanner Overlay](https://pub.dev/packages/qr_scanner_overlay)

# Contributing

**Contributions are always welcome!**

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/YourFeature)
3. Commit your Changes (git commit -m 'Add Your Feature')
4. Push to the Branch (git push origin feature/YourFeature)
5. Open a Pull Request

## License

[MIT](https://opensource.org/license/mit)

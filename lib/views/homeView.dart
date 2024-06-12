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
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Color.fromARGB(255, 231, 227, 207),
        title: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: SvgPicture.asset('assets/svg/logo.svg'),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 231, 227, 207),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [QRScanner(), Center(child: TextWidget())],
      ),
    );
  }
}

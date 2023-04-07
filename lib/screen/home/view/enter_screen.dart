import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({Key? key}) : super(key: key);

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("asset/image/bg.jpg"),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black.withOpacity(0.5),
            ),
            Center(
              child: Text(
                "WELCOME!!!\n\n\n\nTumblr welcomes you in the community.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lora(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

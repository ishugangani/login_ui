import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 80,),
                    Text(
                      "tumblr",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lora(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 40,),
                    Text(
                      " Welcome to your corner of \n the internet.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spaceGrotesk(color: Colors.white,fontSize: 20),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "You'll never be bored again.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spaceGrotesk(color: Colors.white,fontSize: 20),
                    ),
                    Expanded(child: SizedBox()),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'in');
                      },
                      child: Text("Sign in or Log in :",style: GoogleFonts.spaceGrotesk(color: Colors.black,fontSize: 15),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white70),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

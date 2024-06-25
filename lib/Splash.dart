import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uxe_loft/Onboarding_screen.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Onboarding_screen()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Center(child: Image.asset('assets/sp.png'))
         ],
       ),
    );
  }
}

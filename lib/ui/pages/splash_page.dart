import 'dart:async';

import 'package:app_bank/shared/theme.dart';
import 'package:app_bank/ui/pages/onbording/onbording_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

@override
  void initState() {

    super.initState();

    Timer(const Duration(seconds: 2), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBordingPage(),),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkbackgroundColor,
      body: Center(child: Container(
        width: 155,
        height: 50,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_logo_dark.png'),
          ),
        ),
      ),),
    );
  }
}
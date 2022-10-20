import 'package:app_bank/ui/pages/onbording/onbording_page.dart';
import 'package:app_bank/ui/pages/signin/signin_page.dart';
import 'package:app_bank/ui/pages/signup/signup_page.dart';
import 'package:app_bank/ui/pages/signup/signup_upload_profile_page.dart';
import 'package:app_bank/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onBording': (context) => const OnBordingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
      },
    );
  }
}

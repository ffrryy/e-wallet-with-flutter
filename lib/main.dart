import 'package:app_bank/blocs/auth/auth_bloc.dart';
import 'package:app_bank/shared/theme.dart';
import 'package:app_bank/ui/pages/dataprovider/data_package_page.dart';
import 'package:app_bank/ui/pages/dataprovider/data_provider_page.dart';
import 'package:app_bank/ui/pages/dataprovider/data_provider_success.dart';
import 'package:app_bank/ui/pages/home/home_page.dart';
import 'package:app_bank/ui/pages/onbording/onbording_page.dart';
import 'package:app_bank/ui/pages/pin/edit_pin_page.dart';
import 'package:app_bank/ui/pages/pin/pin.dart';
import 'package:app_bank/ui/pages/profile/edit_profile_page.dart';
import 'package:app_bank/ui/pages/profile/profile_page.dart';
import 'package:app_bank/ui/pages/profile/profile_success_page.dart';
import 'package:app_bank/ui/pages/signin/signin_page.dart';
import 'package:app_bank/ui/pages/signup/signup_page.dart';
import 'package:app_bank/ui/pages/signup/signup_success_page.dart';
import 'package:app_bank/ui/pages/splash_page.dart';
import 'package:app_bank/ui/pages/topup/top_up_amount_page.dart';
import 'package:app_bank/ui/pages/topup/top_up_page.dart';
import 'package:app_bank/ui/pages/topup/top_up_success_page.dart';
import 'package:app_bank/ui/pages/transfer/transfer_amount_page.dart';
import 'package:app_bank/ui/pages/transfer/transfer_page.dart';
import 'package:app_bank/ui/pages/transfer/transfer_success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: lightbackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightbackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
        routes: {
          '/': (context) => const SplashPage(),
          '/onBording': (context) => const OnBordingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-seccess': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/pin': (context) => const PinPage(),
          '/edit-profile': (context) => const EditProfilePage(),
          '/edit-pin': (context) => const EditPinPage(),
          '/profile-success': (context) => const ProfileSuccessPage(),
          '/top-up': (context) => const TopUpPage(),
          '/top-up-amount': (context) => const TopUpAmountPage(),
          '/top-up-success': (context) => const TopUpSuccessPage(),
          '/transfer': (context) => const TransferPage(),
          '/transfer-amount': (context) => const TransferAmountPage(),
          '/transfer-success': (context) => const TransferSuccessPage(),
          '/data-provider': (context) => const DataProviderPage(),
          '/data-package': (context) => const DataPackagePage(),
          '/data-success': (context) => const DataProviderSuccess(),
        },
      ),
    );
  }
}

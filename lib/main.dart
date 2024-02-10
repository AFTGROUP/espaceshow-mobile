import 'package:flutter/material.dart';
import 'package:espaceshow/features/onboarding/slider_one_screen.dart';
import 'package:espaceshow/features/onboarding/slider_two_screen.dart';
import 'package:espaceshow/features/onboarding/slider_three_screen.dart';
import 'package:espaceshow/features/auth/login/login_screen.dart';
import 'package:espaceshow/features/auth/register/register_screen.dart';
import 'package:espaceshow/features/auth/otp/verification_screen.dart';
import 'package:espaceshow/features/auth/otp/verification_success_screen.dart';
import 'package:espaceshow/features/auth/forgot_password/forgot_password_screen.dart';
import 'package:espaceshow/features/auth/forgot_password/forgot_password_choice_screen.dart';
import 'package:espaceshow/features/auth/forgot_password/forgot_password_otp_screen.dart';
import 'package:espaceshow/features/auth/forgot_password/reset_password_screen.dart';

import 'features/auth/forgot_password/reset_password_success.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      //home: OnboardingView(),
      routes: {
          //'/': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
          '/': (context) =>SliderOne(),
          '/firstslider': (context) => SliderOne(),
          '/secondslider': (context) => SliderTwo(),
          '/thirdslider': (context) => SliderThree(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/otp': (context) => VerificationScreen(),
          '/otp_success': (context) => VerificationSuccessScreen(),
          '/forgot_password': (context) => ForgotPasswordScreen(),
          '/forgot_password_choice': (context) => ForgotPasswordChoiceScreen(),
          '/forgot_password_otp': (context) => ForgotPasswordOtpScreen(),
          '/reset_password': (context) => ResetPasswordScreen(),
          '/reset_password_success': (context) => ResetPasswordSuccessScreen(),
        },
    );
  }
}
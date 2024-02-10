import 'package:flutter/material.dart';
import 'package:espaceshow/features/onboarding/slider_one_screen.dart';
import 'features/auth/login/login_screen.dart';
import 'features/onboarding/slider_three_screen.dart';
import 'features/onboarding/slider_two_screen.dart';

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
        },
    );
  }
}
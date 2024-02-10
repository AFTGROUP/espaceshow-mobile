import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../features/onboarding/slider_one_screen.dart';
import '../../features/onboarding/slider_three_screen.dart';
import '../../features/onboarding/slider_two_screen.dart';

class SliderWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final String textbutton;
  final String destination;
  final PageController pageController; // Accept PageController as a parameter

  const SliderWidget({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.textbutton,
    required this.destination,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 789,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3), // Adjust opacity value here (0.5 means 50% opacity)
            BlendMode.srcATop,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Container(
              width: 315,
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  //height: 1.1,
                  letterSpacing: 0.01,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: SwapEffect(
              activeDotColor: Colors.white,
              dotHeight: 8,
              dotWidth: 8,
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            width: 300,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, destination);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9B4793),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
              ),
              child: Text(textbutton, style: TextStyle(color: Colors.white),),
            ),
          ),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}


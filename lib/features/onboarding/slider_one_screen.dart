import 'package:flutter/material.dart';
import '../../utils/widgets/slider_widget.dart';

class SliderOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderWidget(
        pageController: PageController(initialPage: 0),
        imagePath: 'assets/onboarding_image.png', // Provide your image path
        text: 'Accédez à vos meilleurs événements.', // Provide your text
        textbutton: 'Suivant', // Provide your text
        destination: '/secondslider', // Provide your destination route
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../utils/widgets/slider_widget.dart';

class SliderTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderWidget(
        pageController: PageController(initialPage: 1),
        imagePath: 'assets/onboarding_image.png', // Provide your image path
        text: 'Réservez des \n places pour vos événements.', // Provide your text
        textbutton: 'Suivant',
        destination: '/thirdslider', // Provide your destination route
      ),
    );
  }
}
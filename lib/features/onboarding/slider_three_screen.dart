import 'package:flutter/material.dart';

import '../../utils/widgets/slider_widget.dart';

class SliderThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderWidget(
        pageController: PageController(initialPage: 2),
        imagePath: 'assets/onboarding_image.png', // Provide your image path
        text: 'Achetez vos \n tickets en ligne.', // Provide your text
        textbutton: 'Commencer',
        destination: '/login', // Provide your destination route
      ),
    );
  }
}
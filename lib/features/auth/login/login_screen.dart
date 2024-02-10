import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Container(
              width: 76,
              height: 41,
              margin: EdgeInsets.only(top: 71),
              child: Image.asset("assets/logo/logo_l.png"),
            ),
            SizedBox(height: 38),
            Text(
              'Connexion',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                height: 1.52, // line height
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40), // Adjusted gap between text and button
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF9B4793),
                  width: 2,
                ),

              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                    "assets/svg/google-48.svg",
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Continuer avec Google',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.67,
                        color: Colors.black,// line height
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Text("ou"),
            SizedBox(height: 15),
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF9B4793),
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email ou Numéro de téléphone',
                  hintStyle: TextStyle(fontSize: 13,),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF9B4793),
                  width: 2,
                ),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Mot de passe',
                  hintStyle: TextStyle(fontSize: 13,),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            SizedBox(height: 60),
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
            SizedBox(height: 30), // Adjusted gap between text and button
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
                    TextButton(
                      onPressed: () {},
                      child: Row(
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
                              color: Color.fromRGBO(0, 0, 0, 1),// line height
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
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
                  hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                  hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot_password');
                    },
                    child: Text(
                      'Mot de passe oublié ?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        //height: 18 / 12,
                        color: Color(0xFF1966B2),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(195, 15, 102, 0.88),
                ),
                child: Text('Connexion', style: TextStyle(color: Colors.white, fontSize: 15),),
              ),
            ),
            SizedBox(height: 2), // Added spacing
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Vous n’avez pas de compte? ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      //height: 18 / 12, // line height
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Créer un compte',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          //height: 18 / 12, // line height
                          color: Color(0xFF1966B2),
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

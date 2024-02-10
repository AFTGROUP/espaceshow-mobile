import 'package:flutter/material.dart';

class ForgotPasswordOtpScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              width: 76,
              height: 41,
              margin: EdgeInsets.only(top: 71),
              child: Image.asset("assets/logo/logo_l.png"),
            ),
            SizedBox(height: 20,),
            Text(
              'Mot de passe oublié',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                height: 1.52, // line height
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              width: 303,
              child: Text(
                "Veuillez saisir le code de vérification que \n"
                    " nous vous avons envoyé.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.52, // line height
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            Text("Digits placement", style: TextStyle(color: Colors.red),),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot_password_choice');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(195, 15, 102, 0.88),
                    ),
                    child: Text('Précédent', style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/reset_password');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(195, 15, 102, 0.88),
                    ),
                    child: Text('Suivant', style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
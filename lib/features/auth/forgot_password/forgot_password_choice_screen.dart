import 'package:flutter/material.dart';

class ForgotPasswordChoiceScreen extends StatelessWidget{

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
                height: 1.52,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              width: 327,
              child: Text(
                "Obtenir un code de vérification pour réinitialiser le mot \n"
                    " de passe",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.52,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 300,
              child: Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {
                    },
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Par mail au Exemple@gmail.com",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        height: 15 / 10,
                        color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              child: Row(
                children: [
                  Checkbox(
                    value: false, // Set the value as needed
                    onChanged: (bool? value) {
                      // Handle checkbox state change
                    },
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Par SMS au +xxxxxxxxx",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        height: 15 / 10,
                        color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot_password');
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
                      Navigator.pushNamed(context, '/forgot_password_otp');
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
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 76,
              height: 41,
              margin: EdgeInsets.only(top: 71),
              child: Image.asset("assets/logo/logo_l.png"),
            ),
            SizedBox(height: 20,),
            Text(
              'Vérification',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
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
                "Un mail de confirmation vous a été envoyé"
                    " à l’adresse Exemple@gmail.com.\n Veuillez consulter"
                    " votre boite principale ou vos \n spams et entrez le"
                    " code à 5 chiffres puis cliquez \n sur envoyer.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.52, // line height
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            Text("Digits section", style: TextStyle(color: Colors.red),),
            SizedBox(height: 50),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/otp_success');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(195, 15, 102, 0.88),
                ),
                child: Text('Envoyer', style: TextStyle(color: Colors.white, fontSize: 15),),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Vous n’avez pas reçu de code? ',
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
                        //Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Renvoyer le code',
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
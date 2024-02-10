import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget{

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
              width: 327,
              child: Text(
                "Veuillez entrer votre adresse email ou votre numéro de \n"
                    " téléphone associé à votre compte Espace Show+",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.52, // line height
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
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
                      Navigator.pushNamed(context, '/forgot_password_choice');
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
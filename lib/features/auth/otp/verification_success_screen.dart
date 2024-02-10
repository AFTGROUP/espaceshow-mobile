import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerificationSuccessScreen extends StatelessWidget{

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Vérification réussie !',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                    height: 1.52,
                    color: Color.fromRGBO(195, 15, 102, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 12,),
                Icon(
                  Icons.check_circle,
                  color: Color.fromRGBO(195, 15, 102, 1),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              width: 303,
              child: Text(
                "Votre compte a été créé avec succès.",
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
            SvgPicture.asset(
              "assets/svg/otp_success.svg",
              height: 100,
              width: 100,
            ),
            SizedBox(height: 30),
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
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
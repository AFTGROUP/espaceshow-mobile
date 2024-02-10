import 'package:flutter/material.dart';

class ResetPasswordSuccessScreen extends StatelessWidget{

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
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.center,
              width: 403,
              child: Text(
                "Votre mot de passe a été réinitialisé \n avec succès !",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0,
                  height: 1.52, // line height
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            Icon(
                Icons.check_circle,
                color: Color.fromRGBO(195, 15, 102, 0.88),
                size: 40,
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
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
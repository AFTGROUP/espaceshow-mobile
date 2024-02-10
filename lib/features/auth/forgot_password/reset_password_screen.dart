import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget{

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
              'Réinitialisation de mot de passe',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                height: 1.52, // line height
              ),
              textAlign: TextAlign.center,
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
                  hintText: 'Nouveau mot de passe',
                  hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            SizedBox(height: 20),
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
                  hintText: 'Confirmer mot de passe',
                  hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/reset_password_success');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(195, 15, 102, 0.88),
                ),
                child: Text('Valider', style: TextStyle(color: Colors.white, fontSize: 15),),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
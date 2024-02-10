import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Container(
                width: 76,
                height: 41,
                margin: EdgeInsets.only(top: 71),
                child: Image.asset("assets/logo/logo_l.png"),
              ),
              SizedBox(height: 50),
              Text(
                'Inscription',
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
                    style: BorderStyle.solid,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nom',
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
                    style: BorderStyle.solid,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Prénom',
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
                    style: BorderStyle.solid,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Organisateur',
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
                    style: BorderStyle.solid,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Contact',
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
                    style: BorderStyle.solid,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                    hintText: 'Confirmer le mot de passe',
                    hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                      "Politique d'utilisation et de confidentialité",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        height: 15 / 10, 
                        color: Color.fromRGBO(25, 102, 178, 1)
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
                      "Recevoir des mails provenant de la plateforme",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        height: 15 / 10,
                        color: Color.fromRGBO(25, 102, 178, 1)
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/otp');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(195, 15, 102, 0.88),
                  ),
                  child: Text("S'inscrire", style: TextStyle(color: Colors.white, fontSize: 15),),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

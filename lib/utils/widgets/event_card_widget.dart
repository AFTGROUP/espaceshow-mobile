import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String image;
  final String title;
  final double largeur;
  final double hauteur;

  EventCard({required this.image, required this.title,
    required this.largeur, required this.hauteur});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largeur,
      height: hauteur,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
        color: Colors.grey[200], // You can adjust the color as needed
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(image, height: 150, fit: BoxFit.fitWidth,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(244, 140, 6, 1),
                      fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month,
                          color: Color.fromRGBO(239, 80, 161, 0.88),
                          size: 15,
                        ),
                        SizedBox(width: 5,),
                        Text("Ven. 15/08/2023",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on,
                          color: Color.fromRGBO(239, 80, 161, 0.88),
                          size: 15,
                        ),
                        SizedBox(width: 5,),
                        Text("Cotonou, Palais des congrès",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on,
                          color: Color.fromRGBO(239, 80, 161, 0.88),
                          size: 15,
                        ),
                        SizedBox(width: 5,),
                        Text("18:00",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.favorite_outline,
                          color: Color.fromRGBO(239, 80, 161, 0.88),
                          size: 16,
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.message,
                          color: Color.fromRGBO(239, 80, 161, 0.88),
                          size: 16,
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.file_upload_outlined,
                          color: Color.fromRGBO(239, 80, 161, 0.88),
                          size: 16,
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: 148,
                          height: 30,
                          //margin: EdgeInsets.only(top: 614, left: 104),
                          child: ElevatedButton.icon(
                            onPressed: (){

                            },
                            icon: Transform.rotate(
                                angle: 45,
                                child: Icon(Icons.book_online,color: Colors.black,)
                            ),
                            label: Text("Réserver un ticket",style: TextStyle(
                                fontSize: 9,
                                color: Colors.black
                            ),),
                            style:  ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(244, 140, 6, 1)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
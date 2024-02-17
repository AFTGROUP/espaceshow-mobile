import 'package:flutter/material.dart';

import 'package:espaceshow/utils/widgets/event_card_widget.dart';

import '../../utils/widgets/filter_select.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Accueil'),
    Text('Évènement'),
    SizedBox(),
    //Icon(Icons.qr_code_scanner_rounded, size: 30), // Scanner icon
    Text('Finances',),
    Text('Commandes',),
  ];

  final List<String> categories = [
    'Tout',
    'Concert',
    'Formation',
    'Spectacle',
    'Art',
    'Chill',
    'Sport',
  ];
  String selectedCategory = "Tout";
  String selectedCountry = "";
  String selectedCity = "";
  String selectedPeriod = "";

  List<String> countries = ['France', 'Germany', 'Italy', 'Spain'];
  List<String> cities = ['Paris', 'Berlin', 'Rome', 'Madrid'];
  List<String> periods = ['Today', 'This Week', 'This Month', 'This Year'];

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.notifications),
                Icon(Icons.circle_outlined),
              ],
            ),
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 390,
                  height: 230,
                  child: Image.asset("assets/images/home_search.png"),
                ),
                Positioned(
                  top: 50,
                  left: 41,
                  width: 307,
                  height: 69,
                  child: Text(
                    textAlign: TextAlign.center,
                      "Organisez vos évènements et \n"
                          "participez à des évènements en toute \n"
                          "quiétude et en toute sécurité !",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        fontFamily: "Poppins",
                      ),
                    ),
                ),
                Container(
                  //height: 36,
                  margin: EdgeInsets.only(top: 150,left: 50),
                  width: 280,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      hintText: 'Rechercher un événement',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("Evénements populaires", style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10), // Add initial padding
                  EventCard(
                    largeur: 230,
                    hauteur: 300,
                    image: "assets/images/card_image.png",
                    title: "Grand concert de Dadju",
                  ),
                  EventCard(
                    largeur: 230,
                    hauteur: 300,
                    image: "assets/images/card_image.png",
                    title: "Grand concert de Dadju",
                  ),
                  EventCard(
                    largeur: 230,
                    hauteur: 300,
                    image: "assets/images/card_image.png",
                    title: "Grand concert de Dadju",
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text("Catégories", style: TextStyle(
              fontSize: 20,
              color: Colors.black,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: categories
                    .map(
                      (category) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = category;
                      });
                    },
                    child: Container(
                      width: 96,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 1,
                          color: selectedCategory == category
                              ? Colors.green // Change background color when selected
                              : Colors.black, // Default background color
                        ),
                        color: selectedCategory == category
                            ? Color.fromRGBO(195, 15, 102, 0.88) // Change background color when selected
                            : Colors.transparent, // Default background color
                      ),
                      child: Center(
                        child: Text(
                          category,
                          style: TextStyle(
                            color: selectedCategory == category
                                ? Colors.black // Change text color when selected
                                : Colors.black, // Default text color
                          ),
                        ),
                      ),
                    ),
                  ),
                ).toList(),
        ),
      ),
            SizedBox(height: 20,),
            /*Center(
              child: SelectFilters(),
            ),*/
            SizedBox(height: 30,),
            EventCard(
              largeur: 300,
              hauteur: 300,
              image: "assets/images/card_image.png",
              title: "Grand concert de Dadju",
            ),
            SizedBox(height: 20,),
            EventCard(
              largeur: 300,
              hauteur: 300,
              image: "assets/images/card_image.png",
              title: "Grand concert de Dadju",
            ),
            SizedBox(height: 20,),
            EventCard(
              largeur: 300,
              hauteur: 300,
              image: "assets/images/card_image.png",
              title: "Grand concert de Dadju",
            ),
            SizedBox(height: 20,),
            EventCard(
              largeur: 300,
              hauteur: 300,
              image: "assets/images/card_image.png",
              title: "Grand concert de Dadju",
            ),
            SizedBox(height: 20,),
            EventCard(
              largeur: 300,
              hauteur: 300,
              image: "assets/images/card_image.png",
              title: "Grand concert de Dadju",
            ),
            SizedBox(height: 30,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                      onPressed: (){},
                      label: Text("Voir plus",
                        style: TextStyle(color: Colors.black),
                      ),
                    icon: Icon(Icons.navigate_next_sharp,),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(244, 140, 6, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),

          ],
        ) ,
            ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.green), // Customize icon color
              title: Text('Settings'),
              onTap: () {
                // Handle tap
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.red), // Customize icon color
              title: Text('About'),
              onTap: () {
                // Handle tap
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
            color: Colors.black,
            fontSize: 10
        ),
        selectedLabelStyle: TextStyle(
          color: Color.fromRGBO(195, 15, 102, 0.88),
          fontSize: 10
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: 'Accueil',
            activeIcon: Icon(Icons.home, color: Color.fromRGBO(195, 15, 102, 0.88),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Évènement',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Finances',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Commandes',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(195, 15, 102, 0.88),
        onTap: _onItemTapped,
      ),
    );
  }
}

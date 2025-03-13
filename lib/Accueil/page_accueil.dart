import 'package:apps1/widgets/beach.dart';
import 'package:apps1/widgets/recommandation.dart';
import 'package:apps1/widgets/serviceItem.dart';
import 'package:flutter/material.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // 1ere Partie : Section en-tête
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            child: Row(
              children: [
                Image.asset('assets/images/square.png', width: 54, height: 54),
                const SizedBox(width: 10), // Espace entre l'image et le texte
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Bappy",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.pin_drop, size: 16, color: Colors.green),
                        const SizedBox(width: 5),
                        Text('localisation', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ],
                ),
                const Spacer(), // Espace flexible
                Icon(Icons.notification_add, size: 30.0),
              ],
            ),
          ),
          SizedBox(height: 20.0),

          // 2e Partie : Barre de recherche
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        const SizedBox(width: 10),
                        Text('recherche', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ), // Espace entre la barre de recherche et l'icône
                Icon(Icons.filter, size: 40),
              ],
            ),
          ),

          // 3e Partie : Section des services
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              //horizontal: 10.0,
              //vertical: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ServiceItem(
                  icon: 'assets/images/aeroport.png',
                  label: 'Aeroport',
                ),
                SizedBox(width: 17),
                ServiceItem(icon: 'assets/images/hotel.png', label: 'Hotel'),
                SizedBox(width: 17),
                ServiceItem(
                  icon: 'assets/images/voiture.png',
                  label: 'Location',
                ),
                SizedBox(width: 17),
                ServiceItem(
                  icon: 'assets/images/plus-dinfos.png',
                  label: 'Infos',
                ),
                SizedBox(width: 17),
              ],
            ),
          ),

          // 4e Partie : Recommandation
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft, // Aligne le texte à gauche
                    child: Text(
                      "Recommanded for you",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Images et description
                SizedBox(
                  height: 160.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          // Los Angeles
                          Recommandation(
                            img: 'assets/images/angeles.jpg',
                            titre: 'Grand Texte 1',
                            soustitre: 'Petit Texte 1',
                          ),

                          SizedBox(width: 10), // Espace entre les colonnes
                          // 2e lieux Tokyo
                          Recommandation(
                            img: 'assets/images/tokyo.jpg',
                            titre: 'Grand Texte 2',
                            soustitre: 'Petit Texte 2',
                          ),

                          SizedBox(width: 10), // Espace entre les colonnes
                          // 3e lieux Washington
                          Recommandation(
                            img: 'assets/images/bridge.jpg',
                            titre: 'Grand Texte 3',
                            soustitre: 'Petit Texte 3',
                          ),

                          // 4e lieux Chine
                          SizedBox(width: 10),
                          Recommandation(
                            img: 'assets/images/china.jpg',
                            titre: 'Grand Texte 4',
                            soustitre: 'Petit Texte 4',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // 5e Partie :
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              //vertical: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'On Budget Tour', // Grand texte
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('See all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(height: 20.0),

          // 6e Partie :
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Beach(
                  img: 'assets/images/tropical.jpg',
                  title: 'Kribi Beach',
                  describe: 'Description 1',
                  locate: 'Localisation',
                  price: r'$20',
                  date: '/Days',
                ),
                SizedBox(height: 20.0),
                // Limbe beach
                Beach(
                  img: 'assets/images/ocean.jpg',
                  title: 'limbe Beach',
                  describe: 'Description 2',
                  locate: 'Localisation',
                  price: r'$30',
                  date: '/Days',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

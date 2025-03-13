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
                ServiceItem(icon: 'assets/images/hotel.png', label: 'Hotel'),
                ServiceItem(
                  icon: 'assets/images/voiture.png',
                  label: 'Location',
                ),
                ServiceItem(
                  icon: 'assets/images/plus-dinfos.png',
                  label: 'Infos',
                ),
              ],
            ),
          ),

          // 4e Partie : Recommandation
          SizedBox(height: 20.0),
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
                Row(
                  children: [
                    // Los Angeles
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Alignement à gauche
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            15,
                          ), // Arrondir les coins
                          child: Image.asset(
                            'assets/images/angeles.jpg', // Chemin de l'image
                            width: 135,
                            height: 120,
                            fit: BoxFit.cover, // Ajustement de l'image
                          ),
                        ),
                        SizedBox(height: 5), // Espace entre l'image et le texte
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                          ), // Décalage de 7px à droite
                          child: Text(
                            'Grand Texte 1', // Grand texte
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                          ), // Décalage de 7px à droite
                          child: Text(
                            'Petit Texte 1', // Petit texte
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Espace entre les colonnes
                    // 2e lieux Tokyo
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Alignement à gauche
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            15,
                          ), // Arrondir les coins
                          child: Image.asset(
                            'assets/images/tokyo.jpg', // Chemin de l'image
                            width: 135,
                            height: 120,
                            fit: BoxFit.cover, // Ajustement de l'image
                          ),
                        ),
                        SizedBox(height: 5), // Espace entre l'image et le texte
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                          ), // Décalage de 7px à droite
                          child: Text(
                            'Grand Texte 2', // Grand texte
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                          ), // Décalage de 7px à droite
                          child: Text(
                            'Petit Texte 2', // Petit texte
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Espace entre les colonnes
                    // 3e lieux Washington
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Alignement à gauche
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            15,
                          ), // Arrondir les coins
                          child: Image.asset(
                            'assets/images/bridge.jpg', // Chemin de l'image
                            width: 135,
                            height: 120,
                            fit: BoxFit.cover, // Ajustement de l'image
                          ),
                        ),
                        SizedBox(height: 5), // Espace entre l'image et le texte
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                          ), // Décalage de 7px à droite
                          child: Text(
                            'Grand Texte 3', // Grand texte
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                          ), // Décalage de 7px à droite
                          child: Text(
                            'Petit Texte 3', // Petit texte
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
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
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image avec coins arrondis
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        15,
                      ), // Rayon des coins arrondis
                      child: Image.asset(
                        'assets/images/tokyo.jpg',
                        width: 135,
                        height: 120,
                        fit: BoxFit.cover, // Ajustement de l'image
                      ),
                    ),
                    SizedBox(width: 10), // Espace entre l'image et les textes
                    // Column pour les textes descriptifs
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Alignement à gauche
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Kribi Beach', // Grand texte
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Description 1', // Petit texte
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Icon(Icons.pin_drop, size: 16, color: Colors.red),
                            const SizedBox(width: 5),
                            Text(
                              'localisation',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // test affichage de prix
                    SizedBox(width: 35),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          r'$20',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/Days',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                // Limbe beach
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image avec coins arrondis
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        15,
                      ), // Rayon des coins arrondis
                      child: Image.asset(
                        'assets/images/tokyo.jpg',
                        width: 135,
                        height: 120,
                        fit: BoxFit.cover, // Ajustement de l'image
                      ),
                    ),
                    SizedBox(width: 10), // Espace entre l'image et les textes
                    // Column pour les textes descriptifs
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Alignement à gauche
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Limbe Beach', // Grand texte
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Description 1', // Petit texte
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Icon(Icons.pin_drop, size: 16, color: Colors.red),
                            const SizedBox(width: 5),
                            Text(
                              'localisation',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // test affichage de prix 2
                    SizedBox(width: 25),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          r'$30',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/Days',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            //fontWeight: FontWeight.bold,
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

// Widget réutilisable pour les éléments de service
class ServiceItem extends StatelessWidget {
  final String icon;
  final String label;

  const ServiceItem({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon, width: 50, height: 50),
        const SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}

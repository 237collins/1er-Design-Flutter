import 'package:flutter/material.dart';

class Beach extends StatelessWidget {
  final String img;
  final String title;
  final String describe;
  final String locate;
  final String price;
  final String date;
  const Beach({
    required this.img,
    required this.title,
    required this.describe,
    required this.locate,
    required this.price,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image avec coins arrondis
        ClipRRect(
          borderRadius: BorderRadius.circular(15), // Rayon des coins arrondis
          child: Image.asset(
            img,
            width: 135,
            height: 120,
            fit: BoxFit.cover, // Ajustement de l'image
          ),
        ),
        SizedBox(width: 10), // Espace entre l'image et les textes
        // Column pour les textes descriptifs
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                title, // Grand texte
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              describe, // Petit texte
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.pin_drop, size: 16, color: Colors.red),
                const SizedBox(width: 5),
                Text(
                  locate,
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),

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
    );
  }
}

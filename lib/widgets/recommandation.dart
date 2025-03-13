import 'package:flutter/material.dart';

class Recommandation extends StatelessWidget {
  final String img;
  final String titre;
  final String soustitre;
  const Recommandation({
    required this.img,
    required this.titre,
    required this.soustitre,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15), // Arrondir les coins
          child: Image.asset(
            img, // Chemin de l'image
            width: 135,
            height: 120,
            fit: BoxFit.cover, // Ajustement de l'image
          ),
        ),
        SizedBox(height: 5), // Espace entre l'image et le texte
        Padding(
          padding: const EdgeInsets.only(left: 7), // Décalage de 7px à droite
          child: Text(
            titre, // Grand texte
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7), // Décalage de 7px à droite
          child: Text(
            soustitre, // Petit texte
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

// Widget réutilisable pour les éléments de service
import 'package:flutter/material.dart';

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

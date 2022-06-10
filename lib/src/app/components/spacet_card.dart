import 'package:flutter/material.dart';

class EduardoCard extends StatelessWidget {
  final String nomeTripulante;
  final String idadeTripulante;

  EduardoCard({required this.nomeTripulante, required this.idadeTripulante});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1.5),
      ),
      child: Column(
        children: [
          Text(nomeTripulante),
          Text(idadeTripulante),
        ],
      ),
    );
  }
}

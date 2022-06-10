import 'package:SpaceT/src/app/components/standard_button.dart';
import 'package:SpaceT/src/app/components/standard_form.dart';
import 'package:SpaceT/src/app/components/standard_page.dart';
import 'package:SpaceT/src/app/modules/cadastro_page/cadastro_page.dart';
import 'package:SpaceT/src/utils/export.dart';
import 'package:SpaceT/src/utils/ui_text.dart';
import 'package:flutter/material.dart';

import '../tripulante_page/list_tripulante_page.dart';
import '../painel_page/painel_page.dart';

// ignore: use_key_in_widget_constructors
class PainelPage extends StatelessWidget {
  List<String> listaParaDemonstracao = ["", ""];
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Space Tourism',
      body: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/Astro.PNG'),
            radius: 80,
          ),
          Text('Seja Bem vindo tripulante'),
          Text(
              'navegando nos icones inferiores voce podera encontrar suas proximas viagens!!'),
          Text('Desenvolvido por: 84922 - Eduardo Yoshio dos Santos Nakahara'),
          Text('84350 - Mateus Oliveira Cardoso Aires'),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var item = listaParaDemonstracao[index];
              return Image.asset(
                'assets/images/301.PNG',
                height: 200,
                width: 200,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 20);
            },
            itemCount: listaParaDemonstracao.length,
            shrinkWrap: true,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListTripulacaoPage()),
          );
        },
      ),
    );
  }
}

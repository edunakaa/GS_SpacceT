import 'package:SpaceT/src/app/components/standard_page.dart';
import 'package:SpaceT/src/app/modules/tripulante_page/tripulante_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:SpaceT/src/utils/ui_text.dart';
import '../../../utils/export.dart';
import '../../components/standard_button.dart';
import '../painel_page/painel_page.dart';
import '../tripulante_page/list_tripulante_page.dart';

class AnalyticPage extends StatelessWidget {
  List<String> listaParaDemonstracao = ["", ""];
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Estatisticas',
      body: Column(
        children: [
          Text('Modelo:'),
          Image.asset(
            'assets/images/foguete.PNG',
            height: 400,
            width: 400,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var item = listaParaDemonstracao[index];
              return Image.asset(
                'assets/images/grafico.jpeg',
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

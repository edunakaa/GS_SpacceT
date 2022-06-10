import 'package:flutter/material.dart';
import 'package:SpaceT/src/app/components/spacet_card.dart';
import 'package:SpaceT/src/app/components/spacet_form.dart';
import 'package:SpaceT/src/app/modules/tripulante_page/tripulante_model.dart';

class ListTripulacaoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListTripulacaoPageState();
  }
}

class _ListTripulacaoPageState extends State<ListTripulacaoPage> {
  TextEditingController nomeTripulanteController = TextEditingController();
  TextEditingController idadeTripulanteController = TextEditingController();

  FocusNode nomeTripulanteFocus = FocusNode();
  FocusNode idadeTripulanteFocus = FocusNode();

  List<TripulanteModel> listaTripulante = [
    TripulanteModel(nome: 'Mr.Myaghi', idade: 99)
  ];

  adicionarTripulante({required String nome, required String ano}) {
    setState(() {
      listaTripulante.insert(
        0,
        TripulanteModel(
          nome: nome,
          idade: num.parse(ano),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 35, right: 35),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(height: 20),
            EduardoForm(
              label: 'Digite o nome do Tripulante',
              focuNode: nomeTripulanteFocus,
              userInputController: nomeTripulanteController,
              onEditingComplete: () {
                idadeTripulanteFocus.nextFocus();
              },
            ),
            const SizedBox(height: 20),
            EduardoForm(
              label: 'Idade do Tripulante',
              focuNode: idadeTripulanteFocus,
              userInputController: idadeTripulanteController,
            ),
            const SizedBox(height: 35),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10);
              },
              shrinkWrap: true,
              itemCount: listaTripulante.length,
              itemBuilder: (context, index) {
                var listItem = listaTripulante[index];
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      print(listItem.nome);
                    },
                    child: EduardoCard(
                      nomeTripulante: listItem.nome,
                      idadeTripulante: 'Idade: ${listItem.idade}',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          adicionarTripulante(
              nome: nomeTripulanteController.text,
              ano: idadeTripulanteController.text);
        },
        tooltip: 'Increment',
      ),
    );
  }
}

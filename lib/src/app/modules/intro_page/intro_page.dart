import 'package:SpaceT/src/app/components/standard_button.dart';
import 'package:SpaceT/src/app/components/standard_form.dart';
import 'package:SpaceT/src/app/modules/cadastro_page/cadastro_page.dart';
import 'package:SpaceT/src/utils/export.dart';
import 'package:SpaceT/src/utils/ui_text.dart';
import 'package:flutter/material.dart';

import '../painel_page/painel_page.dart';

// ignore: use_key_in_widget_constructors
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
        left: AppPaddings.borderPadding,
        right: AppPaddings.borderPadding,
        top: AppPaddings.topPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/SpaceT.PNG',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 30),
            StandardForm(label: login),
            const SizedBox(height: 30),
            StandardForm(label: senha),
            const SizedBox(height: 30),
            StandardButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PainelPage()),
                  );
                },
                buttonText: login),
            const SizedBox(height: 15),
            StandardButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CadastroPage()),
                  );
                },
                buttonText: criarConta),
            const SizedBox(height: 15),
          ],
        ),
      ),
    ));
  }
}

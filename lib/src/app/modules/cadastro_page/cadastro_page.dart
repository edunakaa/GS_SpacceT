import 'package:SpaceT/src/app/modules/intro_page/intro_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/export.dart';
import '../../components/standard_button.dart';
import '../../components/standard_form.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(criarConta),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: Column(
            children: [
              StandardForm(label: nomedeusuario),
              const SizedBox(height: 30),
              StandardForm(label: nome),
              const SizedBox(height: 30),
              StandardForm(label: sobrenome),
              const SizedBox(height: 30),
              StandardForm(label: email),
              const SizedBox(height: 30),
              StandardForm(label: confe),
              const SizedBox(height: 30),
              StandardForm(label: senha),
              const SizedBox(height: 30),
              StandardForm(label: confs),
              const SizedBox(height: 30),
              StandardButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IntroPage()),
                    );
                  },
                  buttonText: cadastrar),
            ],
          ),
        ),
      ),
    );
  }
}

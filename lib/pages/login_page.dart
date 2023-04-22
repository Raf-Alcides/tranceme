import 'package:flutter/material.dart';
import 'package:tranceme/config/custom_colors.dart';
import 'package:tranceme/pages/components/inputs.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
          //email
          const Inputs(name: 'E-mail'),
          //senha
          Inputs(
            name: 'Senha',
            cor: CustomColors.secondColor,
          ),
          //botao esqueceu senha
          GestureDetector(
            child: const Text(
              'Esquceu a senha?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          //botao login
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //divisor
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Entre Com',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //botao de login com o google
          Container(
            height: 50,
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/images/googleIcon.png'),
              const SizedBox(
                width: 30,
              ),
              const Text(
                'Continuar com o google',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          //botao de criar conta
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Novo?',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'C̲r̲i̲e̲ ̲u̲m̲a̲ ̲c̲o̲n̲t̲a̲ ̲a̲g̲o̲r̲a̲',
                  style: TextStyle(fontSize: 16, color: CustomColors.textColor),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

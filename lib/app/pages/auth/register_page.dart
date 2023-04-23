import 'package:flutter/material.dart';
import 'package:tranceme/app/config/custom_colors.dart';
import 'package:tranceme/app/pages/auth/components/inputs.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20), 
          children: [
            const SizedBox(height: 10,),
            Inputs(
                  name: 'Nome',
                  cor: CustomColors.secondColor,
                ),
             //E-mail
                Inputs(
                  name: 'E-mail',
                  cor: CustomColors.secondColor,
                ),
            //Telefone
                Inputs(
                  name: 'Telefone',
                  cor: CustomColors.secondColor,
                ),
             //cpf
                const Inputs(
                  name: 'CPF',
                ),
            //data de nascimento
                Inputs(
                  name: 'Data de nascimento',
                  cor: CustomColors.secondColor,
                ),
             //senha
                Inputs(
                  name: 'Senha',
                  cor: Colors.grey[100],
                ),
             //termos e condicoes
                Row(
                  children: [
                    const Text(
                      'Aceitar Termos',
                      style: TextStyle(fontSize: 16),
                    ),
                    Checkbox(
                      value: _acceptTerms,
                      onChanged: (value) {
                        setState(() {
                          _acceptTerms = value!;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
            //botao de cadastrar
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _acceptTerms ? () {} : null,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                     Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ja possui Conta?',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Clique aqui',
                        style:
                            TextStyle(fontSize: 16, color: Colors.red[300]),
                      )
                    ],
                  ),
                )
          ],
         
        ),
      ),
    );
  }
}

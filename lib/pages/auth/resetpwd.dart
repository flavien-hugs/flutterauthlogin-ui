import 'package:flutter/material.dart';

import 'login.dart';
import 'package:authlogin/components/_logo.dart';
import 'package:authlogin/components/_button.dart';
import 'package:authlogin/components/_textfield.dart';

class RequestResetPasswordPage extends StatelessWidget {
  RequestResetPasswordPage({super.key});

  final emailController = TextEditingController();

  void requestResetPassword() {}

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight - MediaQuery.of(context).padding.top,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // logo
                  const LogoIcon(),
                  const SizedBox(height: 25),

                  const Text(
                    "Entrez votre adresse e-mail et nous vous enverrons un lien pour réinitialiser votre mot de passe",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(height: 25),

                  // email or phonenumber textfield
                  CustomTextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hinText: 'Entrer votre adresse e-mail',
                    obscureText: false,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // reset button
                  CustomButton(
                    buttonText: "Envoyer le lien de réinitialisation",
                    onTap: requestResetPassword
                  ),
                  const SizedBox(height: 20),

                  // login to account ?
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Retour à la page de connexion"),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 20),

                  // login an account
                  CustomButton(
                      buttonText: 'Connectez-vous',
                      backgroundColor: Colors.deepOrangeAccent,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          })
                        );
                      }),
                ],
              ),
            ),
          ),
        )));
  }
}

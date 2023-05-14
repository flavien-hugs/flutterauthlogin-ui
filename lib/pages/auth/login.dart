import 'package:flutter/material.dart';

import 'signup.dart';
import 'resetpwd.dart';
import 'package:authlogin/components/_logo.dart';
import 'package:authlogin/components/_appbar.dart';
import 'package:authlogin/components/_button.dart';
import 'package:authlogin/components/_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailOrPhoneController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser() {}

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: CustomAppBar(
          btnIcon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30
          ),
          btnOnPressed: () {
            Navigator.pop(context);
          },
        ),

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

                  // welcom back, you've been missed !
                  const Text(
                    "Heureux de vous revoir !",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(height: 25),

                  // email or phonenumber textfield
                  CustomTextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailOrPhoneController,
                    hinText: 'Adresse e-mail ou téléphone',
                    obscureText: false,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(Icons.person_2),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // password textfield
                  CustomTextField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    hinText: 'Mot de passe',
                    obscureText: true,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // forgot password
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RequestResetPasswordPage();
                              }));
                            },
                            child: Text(
                              "Mot de passe oublié ?",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      )),

                  const SizedBox(height: 25),

                  // login button
                  CustomButton(buttonText: "Se connecter", onTap: loginUser),
                  const SizedBox(height: 20),

                  // already account ?
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
                            child: Text("Vous avez déjà un compte ?"),
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
                          return SignUpPage();
                        }));
                      }),
                ],
              ),
            ),
          ),
        )));
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_with_state/src/login/service/user_service.dart';
import 'package:login_with_state/src/login/store/user_store.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailTextController =  TextEditingController();
  final passwordTextController =  TextEditingController();

  final store = UserStore(UserService(dio: Dio()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              controller: emailTextController,
              decoration: const InputDecoration(
                label:  Text("Email"),
                hintText: "Digite o seu email"
              ),
            ),
          ),
          SizedBox(
            width: 300,
            child: TextField(
              controller: emailTextController,
              decoration: const InputDecoration(
                label:  Text("password"),
                hintText: "Digite a sua senha"
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: ElevatedButton(
              onPressed: (){
                store.verifyLogin(emailTextController.text, emailTextController.text);
              }, 
              child: const Text("login")
            ),
          )
        ],
      ),
    );
  }
}
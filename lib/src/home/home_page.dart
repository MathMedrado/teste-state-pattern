import 'package:flutter/material.dart';
import 'package:login_with_state/app.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children:  [
          const Text("bem vindo"),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(MyApp.Login);
              }, 
              child: const Text("Login")
            ),
          )
        ],
      ),
    );
  }
}
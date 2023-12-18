import 'package:flutter/material.dart';


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
                Navigator.of(context).pushNamed("");
              }, 
              child: const Text("Login")
            ),
          )
        ],
      ),
    );
  }
}
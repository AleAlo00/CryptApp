import 'package:flutter/material.dart';

class FriendsKeysPage extends StatelessWidget {
  const FriendsKeysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chiavi amici"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Qui potrai aggiungere e visualizzare le chiavi pubbliche dei tuoi amici.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

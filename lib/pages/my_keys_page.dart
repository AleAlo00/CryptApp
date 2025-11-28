import 'package:flutter/material.dart';

class MyKeysPage extends StatelessWidget {
  const MyKeysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Le mie chiavi"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Qui verranno mostrate la tua chiave pubblica e privata.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

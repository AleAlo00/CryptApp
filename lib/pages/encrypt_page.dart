import 'package:flutter/material.dart';

class EncryptPage extends StatelessWidget {
  const EncryptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cripta file"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Qui potrai selezionare un file e criptarlo.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

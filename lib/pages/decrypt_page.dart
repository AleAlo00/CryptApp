import 'package:flutter/material.dart';

class DecryptPage extends StatelessWidget {
  const DecryptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Decripta file"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Qui potrai selezionare un file criptato e decriptarlo.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

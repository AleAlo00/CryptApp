import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Per gestire l'effetto di scala
  double scale1 = 1.0;
  double scale2 = 1.0;
  double scale3 = 1.0;
  double scale4 = 1.0;

  Widget buildButton({
    required String title,
    required IconData icon,
    required double scale,
    required VoidCallback onTapDown,
    required VoidCallback onTapUp,
  }) {
    return AnimatedScale(
      scale: scale,
      duration: const Duration(milliseconds: 120),
      curve: Curves.easeOut,
      child: GestureDetector(
        onTapDown: (_) => onTapDown(),
        onTapUp: (_) => onTapUp(),
        onTapCancel: onTapUp,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1F1F1F),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.greenAccent.withOpacity(0.4),
              width: 2,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 50, color: Colors.greenAccent),
                const SizedBox(height: 12),
                Text(
                  title,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CryptApp"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
          children: [
            // 1) LE MIE CHIAVI
            buildButton(
              title: "Le mie chiavi",
              icon: Icons.vpn_key,
              scale: scale1,
              onTapDown: () => setState(() => scale1 = 0.93),
              onTapUp: () {
                setState(() => scale1 = 1.0);
                Navigator.pushNamed(context, '/myKeys');
              },
            ),

            // 2) CHIAVI AMICI
            buildButton(
              title: "Chiavi amici",
              icon: Icons.people,
              scale: scale2,
              onTapDown: () => setState(() => scale2 = 0.93),
              onTapUp: () {
                setState(() => scale2 = 1.0);
                Navigator.pushNamed(context, '/friendsKeys');
              },
            ),

            // 3) CRIPTA
            buildButton(
              title: "Cripta file",
              icon: Icons.lock,
              scale: scale3,
              onTapDown: () => setState(() => scale3 = 0.93),
              onTapUp: () {
                setState(() => scale3 = 1.0);
                Navigator.pushNamed(context, '/encrypt');
              },
            ),

            // 4) DECRIPTA
            buildButton(
              title: "Decripta file",
              icon: Icons.lock_open,
              scale: scale4,
              onTapDown: () => setState(() => scale4 = 0.93),
              onTapUp: () {
                setState(() => scale4 = 1.0);
                Navigator.pushNamed(context, '/decrypt');
              },
            ),
          ],
        ),
      ),
    );
  }
}

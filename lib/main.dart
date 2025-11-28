import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/my_keys_page.dart';
import 'pages/friends_keys_page.dart';
import 'pages/encrypt_page.dart';
import 'pages/decrypt_page.dart';

void main() {
  runApp(const CryptApp());
}

class CryptApp extends StatelessWidget {
  const CryptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),

      // ROUTES
      routes: {
        '/': (context) => const HomePage(),
        '/myKeys': (context) => const MyKeysPage(),
        '/friendsKeys': (context) => const FriendsKeysPage(),
        '/encrypt': (context) => const EncryptPage(),
        '/decrypt': (context) => const DecryptPage(),
      },

      initialRoute: '/',
    );
  }
}

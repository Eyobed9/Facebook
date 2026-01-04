import 'package:facebook/authentication/login_page.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class Modal extends StatefulWidget {
  const Modal({super.key, required this.title});

  final String title;

  @override
  State<Modal> createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  @override
  void initState() {
    super.initState();

    _navigateToLoginPage();
  }

  void _navigateToLoginPage() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              iconSize: 72,
              color: Color.fromARGB(255, 59, 89, 152),
              icon: const Icon(Icons.facebook),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            // Timer(Duration(seconds: 5), Navigator())
            // Future()
          ],
        ),
      ),
    );
  }
}

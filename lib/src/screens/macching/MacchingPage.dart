import 'package:flutter/material.dart';

class MacchingPage extends StatelessWidget {
  const MacchingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マッチング'),
      ),
      body: const Center(
          child: Text('マッチング', style: TextStyle(fontSize: 32.0))),
    );
  }
}
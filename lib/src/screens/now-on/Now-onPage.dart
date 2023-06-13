import 'package:flutter/material.dart';

class NowonPage extends StatelessWidget {
  const NowonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Now-on'),
      ),
      body: const Center(
          child: Text('Now-on', style: TextStyle(fontSize: 32.0))),
    );
  }
}
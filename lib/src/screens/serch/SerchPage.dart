import 'package:flutter/material.dart';

class SerchPage extends StatelessWidget {
  const SerchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('検索'),
      ),
      body: const Center(
          child: Text('検索', style: TextStyle(fontSize: 32.0))),
    );
  }
}

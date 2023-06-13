import 'package:flutter/material.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('トーク'),
      ),
      body: const Center(
          child: Text('トーク', style: TextStyle(fontSize: 32.0))),
    );
  }
}
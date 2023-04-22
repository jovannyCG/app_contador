import 'package:flutter/material.dart';

class CouterScreen extends StatelessWidget {
  const CouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('counter Screen'),
        actions: [

        ]),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.plus_one),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('10', style: TextStyle(fontSize: 130, fontWeight: FontWeight.w100),), Text('cantidad de clics', style: TextStyle(fontSize: 30, ),)],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CouterScreen extends StatefulWidget {

  const CouterScreen({super.key});

  @override
  State<CouterScreen> createState() => _CouterScreenState();
}

class _CouterScreenState extends State<CouterScreen> {
  int clickCouter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('counter Screen'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          clickCouter ++;
          setState(() {
           clickCouter ++;
          });
        },
        child: const Icon(Icons.plus_one),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$clickCouter', style: const TextStyle(fontSize: 130, fontWeight: FontWeight.w100),), 
            const Text('cantidad de clics', style: TextStyle(fontSize: 30, ),)],
        ),
      ),
    );
  }
}

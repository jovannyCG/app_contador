import 'package:flutter/material.dart';

class CouterFunctionsScreen extends StatefulWidget {
  const CouterFunctionsScreen({super.key});

  @override
  State<CouterFunctionsScreen> createState() => _CouterFunctionsScreenState();
}

class _CouterFunctionsScreenState extends State<CouterFunctionsScreen> {
  int clickCouter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {
                clickCouter = 0;
                setState(() {});
              },
              icon: const Icon(Icons.refresh_rounded)),
        ],
        centerTitle: true,
        title: const Text('counter Functions'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              clickCouter++;
              setState(() {});
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 15,),
          FloatingActionButton(
            onPressed: () {
              clickCouter--;
              setState(() {});
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
          
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCouter',
              style:
                  const TextStyle(fontSize: 130, fontWeight: FontWeight.w100),
            ),
            (clickCouter == 1)
                ? const Text(
                    'clic',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                : const Text(
                    ' clics',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

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
          ButtonCounter(
            icon: Icons.refresh_rounded,
            function: () {
              clickCouter = 0;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 15,
          ),
          ButtonCounter(
            icon: Icons.plus_one,
            function: () {
              clickCouter++;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 15,
          ),
          ButtonCounter(
            icon: Icons.exposure_minus_1_outlined,
            function: () {
              if(clickCouter==0)return;
              clickCouter--;
              setState(() {});
            },
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

class ButtonCounter extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;

  const ButtonCounter({
    super.key,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      shape: const StadiumBorder(),
      onPressed: function,
      child: Icon(icon),
    );
  }
}

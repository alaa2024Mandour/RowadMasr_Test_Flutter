import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter=0;

  void incrementCounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text("You Pushed The Button This Many Time"),
            Text("$counter"),
            ElevatedButton(
                onPressed: (){
                    incrementCounter();
                },
                child: const Text(
                    "Increment"
                ))
          ],
        ),
      ),

    );
  }
}

import 'package:flutter/material.dart';

class NavigationPop extends StatefulWidget {
  const NavigationPop({super.key});

  @override
  State<NavigationPop> createState() => _NavigationPopState();
}

class _NavigationPopState extends State<NavigationPop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pop Navigation - Appbar'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: const Text('Go back (pop)'))
            ],
          ),
        ),
      ),
    );
  }
}
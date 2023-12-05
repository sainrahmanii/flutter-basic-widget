import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  WrapWidget({Key ? key}) : super(key: key);

  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.purple,
    Colors.deepPurple,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap - Appbar'),
        actions: const [],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Wrap(
                spacing: 20,
                runSpacing: 10,
                children: colors.map((color){
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                }).toList()
              )
            ],
          ),
        ),
      ),
    );
  }
}
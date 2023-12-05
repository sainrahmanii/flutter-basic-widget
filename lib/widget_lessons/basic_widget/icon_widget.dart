import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon - Appbar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const Row(
          children: [
            Icon(
              Icons.share,
              size: 32,
            ),
            Icon(
              Icons.favorite,
              size: 36,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}

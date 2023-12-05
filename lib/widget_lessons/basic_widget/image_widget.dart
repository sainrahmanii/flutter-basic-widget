import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text(
          'Image - Appbar',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: Image.network(
                  'https://class.buildwithangga.com/storage/assets/thumbnail/117650/Bedah-dan-Slicing-Desain.png'),
            )
          ],
        ),
      ),
    );
  }
}

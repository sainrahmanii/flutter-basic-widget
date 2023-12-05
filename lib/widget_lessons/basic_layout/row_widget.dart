import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row - Appbar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(onPressed: (){},
                  icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black45,),
                  ),
                ),
                const Text(
                  'Detail',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(
                  Icons.share,
                  size: 32,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
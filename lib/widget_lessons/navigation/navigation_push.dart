import 'package:flutter/material.dart';
import 'package:flutter_basic_apps/widget_lessons/navigation/navigation_pop.dart';
// import 'package:flutter_basic_apps/widget_lessons/navigation/sliver_widget.dart';

class NavigationPush extends StatefulWidget {
  const NavigationPush({Key? key}) : super(key: key);

  @override
  State<NavigationPush> createState() => _NavigationPushState();
}

class _NavigationPushState extends State<NavigationPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nagigation Push - Appbar'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.of(context)
                .push(MaterialPageRoute(builder: (context){
                  return const NavigationPop();
                }));
              }, child: const Text('Go to next page'))
            ],
          ),
        ),
      ),
    );
  }
}
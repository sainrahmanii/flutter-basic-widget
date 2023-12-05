import 'package:flutter/material.dart';
import 'package:flutter_basic_apps/widget_lessons/navigation/sliver_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_widget/button_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_widget/image_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/navigation/tabbar_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_widget/circle_avatar_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_widget/container_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_widget/icon_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_widget/scaffold_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_widget/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SliverWidget());
  }
}

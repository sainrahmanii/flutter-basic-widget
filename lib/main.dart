import 'package:flutter/material.dart';
import 'package:flutter_basic_apps/widget_lessons/stateless_stateful_widget/stateless_stateful_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_form/dialog_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_form/form_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/aspecratio_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/center_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/column_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/expanded_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/gridview_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/listview_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/padding_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/row_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/sizedbox_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/stack_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/basic_layout/wrap_widget.dart';
// import 'package:flutter_basic_apps/widget_lessons/navigation/bottom_navigation.dart';
// import 'package:flutter_basic_apps/widget_lessons/navigation/navigation_drawer.dart';
// import 'package:flutter_basic_apps/widget_lessons/navigation/navigation_push.dart';
// import 'package:flutter_basic_apps/widget_lessons/navigation/sliver_widget.dart';
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
        home: const StatelessStatfulWidget()
    );
  }
}

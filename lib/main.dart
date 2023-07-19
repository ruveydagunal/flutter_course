import 'package:course_flutter/demos/demos1/demos_home_view.dart';
import 'package:course_flutter/stateful_pageview_textfield/stateful_widget.dart';
import 'package:course_flutter/stateful_pageview_textfield/stateless_widget.dart';
import 'package:course_flutter/stateful_pageview_textfield/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: DemosHomeView());
  }
}

import 'package:course_flutter/hw/hw1/page1.dart';
import 'package:course_flutter/hw/hw1/page2.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _title = 'Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Page1();
                      }));
                    },
                    child: Text('Page 1')),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Page2();
                      }));
                    },
                    child: Text('Page 2')),
              ),
            ),

          ],
        ));
  }
}

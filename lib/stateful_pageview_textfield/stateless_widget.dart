import 'package:course_flutter/stateful_pageview_textfield/stateful_widget.dart';
import 'package:flutter/material.dart';

class StatelessExample extends StatelessWidget {
  const StatelessExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const StatefulExample();
              },
            ));
          },
          child: const Icon(Icons.skip_next)),
      appBar: AppBar(
        title: const Text('Stateless Example'),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Stateless Example',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
        ]),
      ),
    );
  }
}

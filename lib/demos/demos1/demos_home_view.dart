// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:course_flutter/utils/widget/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:course_flutter/demos/demos1/demos_first_detail_view.dart';
import 'package:course_flutter/demos/demos1/demos_second_detail_view.dart';

class DemosHomeView extends StatelessWidget {
  const DemosHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const DemosFirstScreen();
                    },
                  ));
                },
                text: 'First Screen'),
            CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const DemosSecondScreen();
                    },
                  ));
                },
                text: 'Second Screen')
          ],
        ),
      ),
    );
  }
}

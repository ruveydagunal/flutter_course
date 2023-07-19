import 'package:course_flutter/demos/demos1/demos_second_detail_view.dart';
import 'package:flutter/material.dart';

class DemosFirstScreen extends StatefulWidget {
  const DemosFirstScreen({super.key});

  @override
  State<DemosFirstScreen> createState() => _DemosFirstScreenState();
}

Color amberColor = Colors.amber;

class _DemosFirstScreenState extends State<DemosFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const DemosSecondScreen();
          },
        ));
      }, child: const Icon(Icons.arrow_right_outlined),),
      appBar: AppBar(
        title: const Text('First View'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (amberColor == Colors.amber) {
                    amberColor = Colors.purple;
                  } else {
                    amberColor = Colors.amber;
                  }
                });
              },
              icon: const Icon(Icons.change_circle_outlined))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: amberColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [image(), image(), image(), image()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                stick(),
                stick(),
                stick(),
                stick(),
                stick(),
                stick(),
                stick(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container stick() {
    return Container(
      width: 20,
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16))),
    );
  }

  Image image() => Image.asset(
        'assets/images/logo.jpg',
        height: 75,
      );
}

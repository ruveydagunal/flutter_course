import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  const StatefulExample({super.key});

  @override
  State<StatefulExample> createState() => _StatefulExampleState();
}

Color color = ColorConstant.blueColor;

class _StatefulExampleState extends State<StatefulExample> {
  void changeColor() {
    setState(() {
      if (color == ColorConstant.blueColor) {
        color = ColorConstant.amberColor;
        return;
      }
      color = ColorConstant.blueColor;
    });
  }

  @override
  void initState() {
    super.initState();
    color = ColorConstant.purpleColor;
    print('initState çalıştı');
  }

  @override
  Widget build(BuildContext context) {
    print('build çalıştı');
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
          color: color,
          height: double.infinity,
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Stateful Example',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: changeColor, child: const Text('Rengini değiştir'))
          ]),
        ));
  }
}

class ColorConstant {
  static const Color amberColor = Colors.amber;
  static const Color blueColor = Color.fromARGB(255, 141, 182, 216);
  static const Color purpleColor = Colors.purple;
}

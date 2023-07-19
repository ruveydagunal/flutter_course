import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

Color color = ColorConstant.blueColor;

class _Page1State extends State<Page1> {
  final String _title = 'Page 1 ';

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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
          actions: [
            changeColorButton(),
          ],
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: color,
            child: fourImage()));
  }

  // ayrı bir yerde yapmaya çalıştım da olmadı :(
  IconButton changeColorButton() =>
      IconButton(icon: const Icon(Icons.change_circle), onPressed: changeColor);
}

class fourImage extends StatelessWidget {
  const fourImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            
            PngImages(name: ImageItems().Smile_3d),
            PngImages(name: ImageItems().Smile_3d),
            PngImages(name: ImageItems().Smile_3d),
            PngImages(name: ImageItems().Smile_3d)
          ],
        ),
      ],
    );
  }
}

class ColorConstant {
  static const Color amberColor = Colors.amber;
  static const Color blueColor = Colors.blue;
  static const Color purpleColor = Colors.purple;
}

class PngImages extends StatelessWidget {
  const PngImages({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Image.asset(
        _nameWithPad,
        fit: BoxFit.cover,
      ),
    );
  }

  String get _nameWithPad => 'assets/png/$name.png';
}

class ImageItems {
  final String Smile_3d = 'smile_3d';
}

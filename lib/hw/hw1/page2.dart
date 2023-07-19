import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

Color color = ColorConstant.blueColor;
TextEditingController emailController= TextEditingController();
TextEditingController keyController = TextEditingController();
class _Page2State extends State<Page2> {

  final String _title = 'Page 2 ';

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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: 'Mail Girin',
                      icon: Icon(Icons.mail),
                      suffixIcon: Icon(Icons.mail_outline),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Şifre Girin',
                        icon: Icon(Icons.key),
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      print("mail: ${emailController.text}");
                    },
                    child: Text('Giriş Yap'))
              ],
            ),
          ),
        ));
  }

  // ayrı bir yerde yapmaya çalıştım da olmadı :(
  IconButton changeColorButton() =>
      IconButton(icon: const Icon(Icons.change_circle), onPressed: changeColor);
}

class ColorConstant {
  static const Color amberColor = Colors.amber;
  static const Color blueColor = Colors.blue;
  static const Color purpleColor = Colors.purple;
}

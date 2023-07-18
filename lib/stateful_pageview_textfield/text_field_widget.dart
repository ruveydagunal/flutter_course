import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Example (Hello)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          TextFormField(
            maxLength: 15,
            controller: nameController,
            inputFormatters: [
              LengthLimitingTextInputFormatter(10)
            ],
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black
                ),
              ),
              errorText: 'abc',
              fillColor: Colors.amber,
              // filled: true,
              hintText: 'Name Girin',
              label: Text('Name'),
              icon: Icon(Icons.person),
              prefixIcon: Icon(Icons.abc),
              suffixIcon: Icon(Icons.access_alarm_outlined),
            ),
          ),
          TextFormField(
            maxLength: 15,
            controller: emailController,
            inputFormatters: [
              LengthLimitingTextInputFormatter(10)
            ],
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black
                ),
              ),
              errorText: 'abc',
              fillColor: Colors.amber,
              // filled: true,
              hintText: 'Email Girin',
              label: Text('Email'),
              icon: Icon(Icons.person),
              prefixIcon: Icon(Icons.abc),
              suffixIcon: Icon(Icons.access_alarm_outlined),
            ),
          ),
          ElevatedButton(onPressed: (){
            print("name: ${nameController.text} + email: ${emailController.text}");
          }, child: Text('Giriş Yap'))
        ]),
      ),
    );
  }
}
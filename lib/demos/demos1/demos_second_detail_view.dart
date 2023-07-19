import 'package:course_flutter/demos/demos1/demos_home_view.dart';
import 'package:course_flutter/utils/widget/custom_button.dart';
import 'package:flutter/material.dart';

class DemosSecondScreen extends StatefulWidget {
  const DemosSecondScreen({super.key});

  @override
  State<DemosSecondScreen> createState() => _DemosSecondScreenState();
}

Color amberColor = Colors.amber;
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
IconData visibilityIcon = Icons.visibility_outlined;
IconData offVisibilityIcon = Icons.visibility_off_outlined;
bool isSecured = true;

class _DemosSecondScreenState extends State<DemosSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: fab(context),
      appBar: appBar(),
      body: Container(
          padding: const EdgeInsets.all(16),
          height: double.infinity,
          color: amberColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              emailTextField(),
              TextFormField(
                obscureText: isSecured,
                controller: passwordController,
                decoration: InputDecoration(
                    icon: const Icon(Icons.key_outlined),
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    label: const Text('Password'),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (isSecured == true) {
                              isSecured = false;
                            } else {
                              isSecured = true;
                            }
                          });
                        },
                        icon: Icon(
                            isSecured ? visibilityIcon : offVisibilityIcon))),
              ),
              CustomButton(
                  onPressed: () {
                    print('email: ${emailController.text}');
                    print('password: ${passwordController.text}');
                  },
                  text: 'Giriş Yap'),
              const SizedBox(
                height: 200,
              )
            ],
          )),
    );
  }

  FloatingActionButton fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const DemosHomeView(),
            ),
            (route) => false);
      },
      child: const Icon(Icons.home_outlined),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Second View'),
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
    );
  }

  TextFormField emailTextField() {
    return TextFormField(
      controller: emailController,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          label: Text('Email'),
          icon: Icon(Icons.email)),
    );
  }
}

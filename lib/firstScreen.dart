import 'package:flutter/material.dart';
import 'package:mamas_recipe/login.dart';
import 'package:mamas_recipe/signUp.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(60),
          child: CircleAvatar(
            radius: 100,
            child: Image.asset("assets/1.png"),
          ),
        ),
        ElevatedButton(
          style: const ButtonStyle(),
          child: const Text("Sign Up"),
          onPressed: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(),
                  ));
            });
          },
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("OR"),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: const Text("Login"),
          onPressed: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
            });
          },
        )
      ]),
    );
  }
}

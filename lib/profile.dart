import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Column(
          children: [
            Stack(children: [
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.red.shade900,
              ),
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              Text("sas")
            ])
          ],
        ));
  }
}

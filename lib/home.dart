import 'package:flutter/material.dart';

import 'firstScreen.dart';

class Home extends StatefulWidget {
  const Home(
      {super.key,
      required this.name,
      required this.email,
      required this.password});

  final String name;
  final String email;
  final String password;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Image img1 = Image.asset("assets/p1.jpg");
  Image img2 = Image.asset("assets/p2.jpg");
  Image img3 = Image.asset("assets/p3.jpg");
  Image img4 = Image.asset("assets/p4.png");
  Image img5 = Image.asset("assets/p5.jpeg");
  Image img6 = Image.asset("assets/p6.jpeg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mamas Recipe"),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const First(),
                      ));
                });
              },
              child: Icon(Icons.person)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: img1.image, opacity: 0.6, fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 45,
                          left: 20,
                          child: Text("Pakistani Dishes"),
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: img2.image, opacity: 0.6, fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 45,
                          left: 20,
                          child: Text("Arabian Dishes"),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: img3.image, opacity: 0.6, fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 45,
                          left: 20,
                          child: Text("Indian Dishes"),
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: img4.image, opacity: 0.6, fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 45,
                          left: 20,
                          child: Text("Chinese Dishes"),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: img5.image, opacity: 0.6, fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 45,
                          left: 20,
                          child: Text("Italian Dishes"),
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: img6.image, opacity: 0.6, fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 45,
                          left: 20,
                          child: Text("Mexican Dishes"),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
